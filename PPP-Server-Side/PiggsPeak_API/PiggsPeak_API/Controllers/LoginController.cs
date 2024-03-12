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
namespace PiggsPeak_API.Controllers
{
	[ApiController]
	[Route("/api/Login")]
	public class LoginController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly IPasswordHasher<Party> _passwordHasher;

		public LoginController(AppDbContext dbContext, IPasswordHasher<Party> passwordHasher)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_passwordHasher = passwordHasher;
		}

		[HttpPost()]
		public async Task<ActionResult<LoginResponseDTO>> Login([FromBody] LoginRequestDTO credentials)
		{
			if (string.IsNullOrEmpty(credentials.LoginID))
			{
				return BadRequest(new { message = "Username is required" });
			}

			var user = await _dbContext.Parties
									   .AsNoTracking()
									   .FirstOrDefaultAsync(u => u.LoginID == credentials.LoginID);

			if (user == null)
			{
				// User not found by LoginID alone, return an error
				return Unauthorized(new { message = "User not found" });
			} else if (user.IsDeleted == "Y" || user.IsDisabled == "Y")
			{
				return Unauthorized(new { message = "Unable to login with this User." });
			}

			// Verify the hashed password
			var passwordVerificationResult = _passwordHasher.VerifyHashedPassword(user, user.PasswordHash, credentials.Password);
			if (passwordVerificationResult != PasswordVerificationResult.Success)
			{
				return Unauthorized(new { message = "Invalid credentials" });
			}

			// Upon finding the user, generate claims for the user
			var claims = new List<Claim>
			{
				new Claim(ClaimTypes.Name, user.LoginID),
				new Claim(ClaimTypes.NameIdentifier, user.PartyID.ToString()),
				new Claim("FullName", user.PartyName),
			};

			// Commented out the authentication step
			// var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
			// await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));

			// Return a DTO with necessary user information but bypass authentication
			return Ok(new LoginResponseDTO { LoginID = user.LoginID, PartyName = user.PartyName });
		}

		[HttpGet]
		[Route("/api/Logout")]
		public async Task<IActionResult> Logout()
		{
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
			// Consider adding a Token property if using token-based authentication
		}
	}
}
