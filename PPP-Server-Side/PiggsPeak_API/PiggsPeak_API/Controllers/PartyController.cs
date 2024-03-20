using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
    //[Authorize]
	[ApiController]
    [Route("api/Party")]
    public class PartyController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<PartyController> _logger;

		public PartyController(AppDbContext dbContext, ILogger<PartyController> logger)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_logger = logger;
		}

		[HttpGet]
		public async Task<IEnumerable<Party>> Get()
		{
			_logger.LogInformation("Fetching all parties");
			// Retrieve parties from the database
			var parties = await _dbContext.Parties.ToListAsync();
			_logger.LogInformation($"Found {parties.Count} parties");

			// Handle null values for specific properties
			foreach (var party in parties)
			{
				// Handle Party_nm (varchar) - Set to an empty string if null
				party.PartyName ??= string.Empty;

				// Handle Login_id (varchar) - Set to an empty string if null
				party.LoginID ??= string.Empty;

				// Handle Password_Hash_tx (varchar) - Set to an empty string if null
				party.PasswordHash ??= string.Empty;

				// Handle Group_yn (char) - Set to an empty string if null
				party.IsGroup ??= string.Empty;

				// Handle Admin_yn (char) - Set to an empty string if null
				party.IsAdmin ??= string.Empty;

				// Handle Disabled_yn (char) - Set to an empty string if null
				party.IsDisabled ??= string.Empty;

				// Handle Deleted_yn (char) - Set to an empty string if null
				party.IsDeleted ??= string.Empty;

				// Handle Created_by (varchar) - Set to an empty string if null
				party.CreatedBy ??= string.Empty;

				// Handle Modified_by (varchar) - Set to an empty string if null
				party.ModifiedBy ??= string.Empty;

				// Handle Created_tz (varchar) - Set to an empty string if null
				party.CreatedTimeZone ??= string.Empty;

				// Handle Modified_tz (varchar) - Set to an empty string if null
				party.ModifiedTimeZone ??= string.Empty;
			}

			// Return the modified parties list
			return parties;
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<Party>> Get(int id)
		{
			_logger.LogInformation($"Fetching party with ID: {id}");
			var party = await _dbContext.Parties.FindAsync(id);

			if (party == null)
			{
				_logger.LogWarning($"Party with ID: {id} not found");
				return NotFound();
			}

			return party;
		}

		[HttpPost]
		public async Task<IActionResult> Post([FromBody] Party party)
		{
			_logger.LogInformation($"Creating a new party with name: {party.PartyName}");
			_dbContext.Parties.Add(party);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Party with ID: {party.PartyID} created successfully");

			return CreatedAtAction(nameof(Get), new { id = party.PartyID }, party);
		}

		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] Party updatedParty)
		{
			_logger.LogInformation($"Updating party with ID: {id}");
			var existingParty = await _dbContext.Parties.FindAsync(id);

			if (existingParty == null)
			{
				_logger.LogWarning($"Party with ID: {id} not found for update");
				return NotFound();
			}

			existingParty.PartyName = updatedParty.PartyName;
			existingParty.LoginID = updatedParty.LoginID;
			existingParty.PasswordHash = updatedParty.PasswordHash;
			existingParty.IsGroup = updatedParty.IsGroup;
			existingParty.PasswordChangeDate = updatedParty.PasswordChangeDate;
			existingParty.IsAdmin = updatedParty.IsAdmin;
			existingParty.FailedLoginCount = updatedParty.FailedLoginCount;
			existingParty.LastLoginDate = updatedParty.LastLoginDate;
			existingParty.IsDisabled = updatedParty.IsDisabled;
			existingParty.FailedLoginDate = updatedParty.FailedLoginDate;
			existingParty.IsDeleted = updatedParty.IsDeleted;
			existingParty.CreatedBy = updatedParty.CreatedBy;
			existingParty.CreatedDate = updatedParty.CreatedDate;
			existingParty.ModifiedBy = updatedParty.ModifiedBy;
			existingParty.CreatedTimeZone = updatedParty.CreatedTimeZone;
			existingParty.ModifiedDate = updatedParty.ModifiedDate;
			existingParty.ModifiedTimeZone = updatedParty.ModifiedTimeZone;

			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Party with ID: {id} updated successfully");

			return NoContent();
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			_logger.LogInformation($"Deleting party with ID: {id}");
			var party = await _dbContext.Parties.FindAsync(id);

			if (party == null)
			{
				_logger.LogWarning($"Party with ID: {id} not found for deletion");
				return NotFound();
			}

			_dbContext.Parties.Remove(party);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Party with ID: {id} deleted successfully");

			return NoContent();
		}
	}
}
