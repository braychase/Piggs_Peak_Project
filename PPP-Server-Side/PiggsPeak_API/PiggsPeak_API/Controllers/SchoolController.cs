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
	//[Authorize]
	[ApiController]
	[Route("api/School")]
	public class SchoolController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<SchoolController> _logger; // Add logger

		public SchoolController(AppDbContext dbContext, ILogger<SchoolController> logger) // Inject ILogger
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_logger = logger; // Initialize the logger
		}

		[HttpGet]
		public async Task<IEnumerable<School>> Get()
		{
			_logger.LogInformation("Fetching all schools"); // Log fetching action
			var schools = await _dbContext.Schools.ToListAsync();
			_logger.LogInformation($"Found {schools.Count} schools"); // Log count of schools found
			return schools;
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<School>> Get(int id)
		{
			_logger.LogInformation($"Fetching school with ID: {id}"); // Log fetching action
			var school = await _dbContext.Schools.FindAsync(id);

			if (school == null)
			{
				_logger.LogWarning($"School with ID: {id} not found"); // Log warning if not found
				return NotFound();
			}

			return school;
		}

		[HttpPost]
		public async Task<IActionResult> Post([FromBody] School school)
		{
			_logger.LogInformation($"Creating a new school with code: {school.SchoolCode}"); // Log creation action
			_dbContext.Schools.Add(school);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"School with ID: {school.SchoolID} created successfully"); // Log successful creation

			return CreatedAtAction(nameof(Get), new { id = school.SchoolID }, school);
		}

		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] School updatedSchool)
		{
			_logger.LogInformation($"Updating school with ID: {id}"); // Log update action
			var existingSchool = await _dbContext.Schools.FindAsync(id);

			if (existingSchool == null)
			{
				_logger.LogWarning($"School with ID: {id} not found for update"); // Log warning if not found
				return NotFound();
			}

			existingSchool.SchoolCode = updatedSchool.SchoolCode;
			existingSchool.Description = updatedSchool.Description;

			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"School with ID: {id} updated successfully"); // Log successful update

			return NoContent();
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			_logger.LogInformation($"Deleting school with ID: {id}"); // Log deletion action
			var school = await _dbContext.Schools.FindAsync(id);

			if (school == null)
			{
				_logger.LogWarning($"School with ID: {id} not found for deletion"); // Log warning if not found
				return NotFound();
			}

			_dbContext.Schools.Remove(school);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"School with ID: {id} deleted successfully"); // Log successful deletion

			return NoContent();
		}
	}
}
