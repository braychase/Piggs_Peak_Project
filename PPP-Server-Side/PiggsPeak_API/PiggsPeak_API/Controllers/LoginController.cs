using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using PiggsPeak_API.Classes;
using Microsoft.EntityFrameworkCore;

namespace PiggsPeak_API.Controllers
{
	[Route("api/Login")]
	[ApiController]
	public class LoginController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public LoginController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}

		// POST api/Login
		[HttpPost]
		public async Task<IActionResult> Post([FromBody] LoginModel model)
		{
			// Validate the request
			if (model == null || string.IsNullOrEmpty(model.LoginID) || string.IsNullOrEmpty(model.PasswordHash))
			{
				return BadRequest("Invalid login request.");
			}

			// Attempt to find the user (Party) by the provided LoginID
			var user = await _dbContext.Parties
				.FirstOrDefaultAsync(p => p.LoginID == model.LoginID && p.IsDeleted != "Y" && p.IsDisabled != "Y");

			// Check if the user was not found or the password does not match
			if (user == null || user.PasswordHash != model.PasswordHash)
			{
				return Unauthorized("Invalid credentials.");
			}

			// Successfully authenticated
			return Ok("Login successful.");
		}

		public class LoginModel
		{
			public string LoginID { get; set; }
			public string PasswordHash { get; set; }
		}
	}
}