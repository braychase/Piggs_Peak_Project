using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using PiggsPeak_API.Classes;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;
using System.Collections.Generic;
using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
	[ApiController]
	[Route("/api/Login")]
	public class LoginController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly IPasswordHasher<Party> _passwordHasher;
		private readonly ILogger<LoginController> _logger;

		public LoginController(AppDbContext dbContext, IPasswordHasher<Party> passwordHasher, ILogger<LoginController> logger)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_passwordHasher = passwordHasher;
			_logger = logger;
		}

        [HttpGet]				// this endpoint can be used browser testing
        public async Task<ActionResult<LoginResponseDTO>> LoginGet(string username, string password = "")
        {
			_logger.LogInformation("GET login attempt for user {Username}", username);
			return await LoginPost(new LoginRequestDTO() { LoginID = username, Password = password });
		}

        public static bool IsBase64(string s)
        {
            // Credit: oybek https://stackoverflow.com/users/794764/oybek
            if (string.IsNullOrEmpty(s) || s.Length % 4 != 0
               || s.Contains(" ") || s.Contains("\t") || s.Contains("\r") || s.Contains("\n"))
                return false;

            try
            {
                Convert.FromBase64String(s);
                return true;
            }
            catch (Exception exception)
            { return false; }
            
        }

        [HttpPost]
		public async Task<ActionResult<LoginResponseDTO>> LoginPost([FromBody] LoginRequestDTO credentials)
		{
			if (string.IsNullOrEmpty(credentials.LoginID))
			{
				_logger.LogWarning("Login attempt with empty username");
				return BadRequest(new { message = "Username is required" });
			}

			_logger.LogInformation("POST login attempt for user {Username}", credentials.LoginID);

			Party? user = await _dbContext.Parties
						.AsNoTracking()
						.FirstOrDefaultAsync(u => u.LoginID == credentials.LoginID);

			if (user == null)
			{
				_logger.LogWarning("User not found for username {Username}", credentials.LoginID);
				return Unauthorized(new { message = "User not found" });
			}
			else if (user.IsDeleted == "Y" || user.IsDisabled == "Y")
			{
				_logger.LogWarning("Attempt to login with disabled or deleted user {Username}", credentials.LoginID);
				return Unauthorized(new { message = "Unable to login with this User" });
			}

			// Verify the password
			bool bPasswordValid;
			if (IsBase64(user.PasswordHash))
				bPasswordValid = _passwordHasher.VerifyHashedPassword(user, user.PasswordHash, credentials.Password) != PasswordVerificationResult.Success;
			else
                // used when database has not yet run the hasher program ...
                bPasswordValid = user.PasswordHash == credentials.Password;
            if (!bPasswordValid)
			{
				_logger.LogWarning("Invalid credentials for user {Username}", credentials.LoginID);
				return Unauthorized(new { message = "Invalid credentials" });
			}

			_logger.LogInformation("User {Username} successfully logged in", credentials.LoginID);

			// Upon finding the user, generate claims for the user
			var claims = new List<Claim>
			{
				new Claim(ClaimTypes.Name, user.LoginID),
				new Claim(ClaimTypes.NameIdentifier, user.PartyID.ToString()),
				new Claim("FullName", user.PartyName),
				new Claim("School ID", user.DefaultSchool?.ToString() ?? null)
			};

			// this step sets the Cookie used for Auth
			var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
			await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));

			// Return a DTO with necessary user information but bypass authentication
			return Ok(new LoginResponseDTO { LoginID = user.LoginID, PartyName = user.PartyName, DefaultSchoolID = user.DefaultSchool });
		}

		[HttpGet]
		[Route("/api/Logout")]
		public async Task<IActionResult> Logout()
		{
			_logger.LogInformation("User logged out");
			await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
			return Redirect("/Login.html"); // Adjust redirect as needed based on your application's routing
		}

		public class LoginRequestDTO
		{
			public string LoginID { get; set; }
			public string Password { get; set; }
		}

		public class LoginResponseDTO
		{
			public string LoginID { get; set; }
			public string PartyName { get; set; }
			public int? DefaultSchoolID { get; set; }
		}
	}
}
