using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
	[Authorize]
	[ApiController]
	[Route("api/StudentSponsor")]
	public class StudentSponsorController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<StudentSponsorController> _logger; // Add logger

		public StudentSponsorController(AppDbContext dbContext, ILogger<StudentSponsorController> logger)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_logger = logger; // Initialize the logger
		}

		// GET: api/StudentSponsor
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentSponsor>>> Get()
		{
			_logger.LogInformation("Fetching all student sponsors");
			var studentSponsors = await _dbContext.StudentSponsors.ToListAsync();
			_logger.LogInformation($"Found {studentSponsors.Count} student sponsors");
			return studentSponsors;
		}

		// GET api/StudentSponsor/5
		[HttpGet("{id}")]
		public async Task<ActionResult<IEnumerable<StudentSponsor>>> GetByStudentId(int id)
		{
			_logger.LogInformation($"Fetching sponsors for student ID: {id}");
			var studentSponsors = await _dbContext.StudentSponsors
				.AsNoTracking()
				.Where(ss => ss.StudentId == id)
				.ToListAsync();

			if (!studentSponsors.Any())
			{
				_logger.LogWarning($"No sponsors found for student ID: {id}");
				return NotFound();
			}

			return studentSponsors;
		}

		// POST api/StudentSponsor
		[HttpPost]
		public async Task<ActionResult<StudentSponsor>> Post([FromBody] StudentSponsor studentSponsor)
		{
			_logger.LogInformation($"Creating new sponsor for student ID: {studentSponsor.StudentId}");
			_dbContext.StudentSponsors.Add(studentSponsor);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Sponsor created for student ID: {studentSponsor.StudentId}");

			return CreatedAtAction(nameof(GetByStudentId), new { id = studentSponsor.StudentId }, studentSponsor);
		}

		// PUT api/StudentSponsor/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] StudentSponsor studentSponsor)
		{
			if (id != studentSponsor.StudentId)
			{
				_logger.LogWarning("Attempt to update sponsor with mismatched student ID");
				return BadRequest("Mismatched student ID");
			}

			_logger.LogInformation($"Updating sponsor for student ID: {id}");
			_dbContext.Entry(studentSponsor).State = EntityState.Modified;

			try
			{
				await _dbContext.SaveChangesAsync();
				_logger.LogInformation($"Sponsor updated for student ID: {id}");
			}
			catch (DbUpdateConcurrencyException ex)
			{
				if (!_dbContext.StudentSponsors.Any(e => e.StudentId == id))
				{
					_logger.LogWarning($"Sponsor not found for student ID: {id}");
					return NotFound();
				}
				else
				{
					_logger.LogError(ex, "Error updating sponsor for student ID: {ID}", id);
					throw;
				}
			}

			return NoContent();
		}

		// DELETE api/StudentSponsor/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			_logger.LogInformation($"Deleting sponsor with ID: {id}");
			var studentSponsor = await _dbContext.StudentSponsors.FindAsync(id);
			if (studentSponsor == null)
			{
				_logger.LogWarning($"Sponsor with ID: {id} not found for deletion");
				return NotFound();
			}

			_dbContext.StudentSponsors.Remove(studentSponsor);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Sponsor with ID: {id} deleted successfully");

			return NoContent();
		}
	}
}
