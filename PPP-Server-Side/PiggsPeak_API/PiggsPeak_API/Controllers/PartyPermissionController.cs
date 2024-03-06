using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/PartyPermission")]
	[ApiController]
	public class PartyPermissionController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public PartyPermissionController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new System.ArgumentNullException(nameof(dbContext));
		}

		[HttpGet]
		public async Task<IEnumerable<object>> Get()
		{
			// Project the PartyPermission entities into an anonymous object
			var result = await _dbContext.PartyPermissions
				.Select(pp => new
				{
					PartyID = pp.PartyID,
					PermissionID = pp.PermissionID,
					IsPermitted = pp.IsPermitted
				})
				.ToListAsync();

			return result;
		}

		[HttpGet("{partyId}/{permissionId}")]
		public async Task<ActionResult<object>> Get(short partyId, short permissionId)
		{
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
				return NotFound();
			}

			return partyPermission;
		}

		// ... (Other methods using the PartyPermission entity)
	}
}
