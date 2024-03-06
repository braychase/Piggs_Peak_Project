using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/Permission")]
	[ApiController]
	public class PermissionController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public PermissionController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}

		// GET: api/Permission
		[HttpGet]
		public async Task<IEnumerable<Permission>> Get()
		{
			return await _dbContext.Permissions.ToListAsync();
		}

		// GET api/Permission/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Permission>> Get(short id)
		{
			var permission = await _dbContext.Permissions.FindAsync(id);

			if (permission == null)
			{
				return NotFound();
			}

			return permission;
		}

		// POST api/Permission
		[HttpPost]
		public async Task<IActionResult> Post([FromBody] Permission permission)
		{
			_dbContext.Permissions.Add(permission);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = permission.PermissionID }, permission);
		}

		// PUT api/Permission/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(short id, [FromBody] Permission updatedPermission)
		{
			var existingPermission = await _dbContext.Permissions.FindAsync(id);

			if (existingPermission == null)
			{
				return NotFound();
			}

			existingPermission.PermissionName = updatedPermission.PermissionName;
			existingPermission.Description = updatedPermission.Description;
			existingPermission.IsPermitted = updatedPermission.IsPermitted;

			await _dbContext.SaveChangesAsync();

			return NoContent();
		}

		// DELETE api/Permission/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(short id)
		{
			var permission = await _dbContext.Permissions.FindAsync(id);

			if (permission == null)
			{
				return NotFound();
			}

			_dbContext.Permissions.Remove(permission);
			await _dbContext.SaveChangesAsync();

			return NoContent();
		}
	}
}
