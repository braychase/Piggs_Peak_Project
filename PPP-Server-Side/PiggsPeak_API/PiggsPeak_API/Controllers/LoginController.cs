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
	[AllowAnonymous]
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
			if (string.IsNullOrEmpty(credentials.LoginID) || string.IsNullOrEmpty(credentials.Password))
			{
				return BadRequest(new { message = "Username and password are required" });
			}

			var user = await _dbContext.Parties
									   .AsNoTracking()
									   .FirstOrDefaultAsync(u => u.LoginID == credentials.LoginID);

			if (user == null)
			{
				return Unauthorized(new { message = "Username or password is incorrect" });
			}

			var result = _passwordHasher.VerifyHashedPassword(user, user.PasswordHash, credentials.Password);

			if (result != PasswordVerificationResult.Success)
			{
				return Unauthorized(new { message = "Username or password is incorrect" });
			}

			// Upon successful authentication, generate claims for the user
			var claims = new List<Claim>
			{
				new Claim(ClaimTypes.Name, user.LoginID),
				new Claim(ClaimTypes.NameIdentifier, user.PartyID.ToString()),
				new Claim("FullName", user.PartyName),
                // Consider adding roles or other claims as needed
            };

			var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

			await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));


			// Return a DTO with necessary user information and authentication details
			return Ok(new LoginResponseDTO { LoginID = user.LoginID, PartyName = user.PartyName, /* Token = generatedToken */ });
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
