using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
    [Authorize]
	[ApiController]
    [Route("api/PartyPermission")]
    public class PartyPermissionController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<PartyPermissionController> _logger;

		public PartyPermissionController(AppDbContext dbContext, ILogger<PartyPermissionController> logger)
		{
			_dbContext = dbContext ?? throw new System.ArgumentNullException(nameof(dbContext));
			_logger = logger;
		}

		[HttpGet]
		public async Task<IEnumerable<object>> Get()
		{
			_logger.LogInformation("Fetching all party permissions");
			// Project the PartyPermission entities into an anonymous object
			var result = await _dbContext.PartyPermissions
				.Select(pp => new
				{
					PartyID = pp.PartyID,
					PermissionID = pp.PermissionID,
					IsPermitted = pp.IsPermitted
				})
				.ToListAsync();
			_logger.LogInformation($"Found {result.Count} party permissions");
			return result;
		}

		[HttpGet("{partyId}/{permissionId}")]
		public async Task<ActionResult<object>> Get(short partyId, short permissionId)
		{
			_logger.LogInformation($"Fetching party permission for PartyID: {partyId} and PermissionID: {permissionId}");
			var partyPermission = await _dbContext.PartyPermissions
				.Where(pp => pp.PartyID == partyId && pp.PermissionID == permissionId)
				.Select(pp => new
				{
					PartyID = pp.PartyID,
					PermissionID = pp.PermissionID,
					IsPermitted = pp.IsPermitted
				})
				.FirstOrDefaultAsync();

			if (partyPermission == null)
			{
				_logger.LogWarning($"Party permission not found for PartyID: {partyId}, PermissionID: {permissionId}");
				return NotFound();
			}

			return partyPermission;
		}

		// ... (Other methods using the PartyPermission entity)
	}
}
