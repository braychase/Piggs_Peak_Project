using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
	[Authorize]
	[ApiController]
	[Route("api/Permission")]
	public class PermissionController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<PermissionController> _logger; // Add logger

		public PermissionController(AppDbContext dbContext, ILogger<PermissionController> logger) // Inject ILogger
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_logger = logger; // Initialize the logger
		}

		// GET: api/Permission
		[HttpGet]
		public async Task<IEnumerable<Permission>> Get()
		{
			_logger.LogInformation("Fetching all permissions"); // Log fetching action
			var permissions = await _dbContext.Permissions.ToListAsync();
			_logger.LogInformation($"Found {permissions.Count} permissions"); // Log count of permissions found
			return permissions;
		}

		// GET api/Permission/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Permission>> Get(short id)
		{
			_logger.LogInformation($"Fetching permission with ID: {id}"); // Log fetching action
			var permission = await _dbContext.Permissions.FindAsync(id);

			if (permission == null)
			{
				_logger.LogWarning($"Permission with ID: {id} not found"); // Log warning if not found
				return NotFound();
			}

			return permission;
		}

		// POST api/Permission
		[HttpPost]
		public async Task<IActionResult> Post([FromBody] Permission permission)
		{
			_logger.LogInformation($"Creating a new permission with name: {permission.PermissionName}"); // Log creation action
			_dbContext.Permissions.Add(permission);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Permission with ID: {permission.PermissionID} created successfully"); // Log successful creation

			return CreatedAtAction(nameof(Get), new { id = permission.PermissionID }, permission);
		}

		// PUT api/Permission/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(short id, [FromBody] Permission updatedPermission)
		{
			_logger.LogInformation($"Updating permission with ID: {id}"); // Log update action
			var existingPermission = await _dbContext.Permissions.FindAsync(id);

			if (existingPermission == null)
			{
				_logger.LogWarning($"Permission with ID: {id} not found for update"); // Log warning if not found
				return NotFound();
			}

			existingPermission.PermissionName = updatedPermission.PermissionName;
			existingPermission.Description = updatedPermission.Description;
			existingPermission.IsPermitted = updatedPermission.IsPermitted;

			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Permission with ID: {id} updated successfully"); // Log successful update

			return NoContent();
		}

		// DELETE api/Permission/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(short id)
		{
			_logger.LogInformation($"Deleting permission with ID: {id}"); // Log deletion action
			var permission = await _dbContext.Permissions.FindAsync(id);

			if (permission == null)
			{
				_logger.LogWarning($"Permission with ID: {id} not found for deletion"); // Log warning if not found
				return NotFound();
			}

			_dbContext.Permissions.Remove(permission);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Permission with ID: {id} deleted successfully"); // Log successful deletion

			return NoContent();
		}
	}
}
