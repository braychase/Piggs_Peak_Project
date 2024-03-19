using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes; // Ensure this namespace correctly contains the SchoolProgram class
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
	[Authorize]
	[ApiController]
	[Route("api/[controller]")]
	public class ProgramController : ControllerBase
	{
		private readonly AppDbContext _context;
		private readonly ILogger<ProgramController> _logger; // Add logger

		public ProgramController(AppDbContext context, ILogger<ProgramController> logger) // Inject ILogger
		{
			_context = context;
			_logger = logger; // Initialize the logger
		}

		// GET: api/SchoolProgram
		[HttpGet]
		public async Task<ActionResult<IEnumerable<SchoolProgram>>> GetSchoolPrograms()
		{
			_logger.LogInformation("Fetching all school programs"); // Log fetching action
			var programs = await _context.SchoolPrograms.ToListAsync();
			_logger.LogInformation($"Found {programs.Count} school programs"); // Log count of programs found
			return programs;
		}

		// GET api/SchoolProgram/5
		[HttpGet("{id}")]
		public async Task<ActionResult<SchoolProgram>> GetSchoolProgram(int id)
		{
			_logger.LogInformation($"Fetching school program with ID: {id}"); // Log fetching action
			var schoolProgram = await _context.SchoolPrograms.FindAsync(id);

			if (schoolProgram == null)
			{
				_logger.LogWarning($"School program with ID: {id} not found"); // Log warning if not found
				return NotFound();
			}

			return schoolProgram;
		}

		// POST api/SchoolProgram
		[HttpPost]
		public async Task<ActionResult<SchoolProgram>> PostSchoolProgram([FromBody] SchoolProgram schoolProgram)
		{
			_logger.LogInformation($"Creating a new school program with name: {schoolProgram.ProgramName}"); // Log creation action
			_context.SchoolPrograms.Add(schoolProgram);
			await _context.SaveChangesAsync();
			_logger.LogInformation($"School program with ID: {schoolProgram.ProgramID} created successfully"); // Log successful creation

			return CreatedAtAction(nameof(GetSchoolProgram), new { id = schoolProgram.ProgramID }, schoolProgram);
		}

		// PUT api/SchoolProgram/5
		[HttpPut("{id}")]
		public async Task<IActionResult> PutSchoolProgram(int id, [FromBody] SchoolProgram schoolProgram)
		{
			if (id != schoolProgram.ProgramID)
			{
				_logger.LogWarning("Attempt to update school program with mismatched ID"); // Log warning for ID mismatch
				return BadRequest();
			}

			_logger.LogInformation($"Updating school program with ID: {id}"); // Log update action
			_context.Entry(schoolProgram).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
				_logger.LogInformation($"School program with ID: {id} updated successfully"); // Log successful update
			}
			catch (DbUpdateConcurrencyException ex)
			{
				if (!_context.SchoolPrograms.Any(e => e.ProgramID == id))
				{
					_logger.LogWarning($"School program with ID: {id} not found for update"); // Log warning if not found
					return NotFound();
				}
				else
				{
					_logger.LogError(ex, "Error updating school program with ID: {ID}", id); // Log error
					throw;
				}
			}

			return NoContent();
		}

		// DELETE api/SchoolProgram/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteSchoolProgram(int id)
		{
			_logger.LogInformation($"Deleting school program with ID: {id}"); // Log deletion action
			var schoolProgram = await _context.SchoolPrograms.FindAsync(id);
			if (schoolProgram == null)
			{
				_logger.LogWarning($"School program with ID: {id} not found for deletion"); // Log warning if not found
				return NotFound();
			}

			_context.SchoolPrograms.Remove(schoolProgram);
			await _context.SaveChangesAsync();
			_logger.LogInformation($"School program with ID: {id} deleted successfully"); // Log successful deletion

			return NoContent();
		}
	}
}
