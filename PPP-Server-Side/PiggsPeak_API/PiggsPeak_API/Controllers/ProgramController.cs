using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes; // Ensure this namespace correctly contains the SchoolProgram class
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
    [Authorize]
    [ApiController]
    [Route("api/[controller]")]
    public class ProgramController : ControllerBase
	{
		private readonly AppDbContext _context;

		public ProgramController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/SchoolProgram
		[HttpGet]
		public async Task<ActionResult<IEnumerable<SchoolProgram>>> GetSchoolPrograms()
		{
			return await _context.SchoolPrograms.ToListAsync();
		}

		// GET api/SchoolProgram/5
		[HttpGet("{id}")]
		public async Task<ActionResult<SchoolProgram>> GetSchoolProgram(int id)
		{
			var schoolProgram = await _context.SchoolPrograms.FindAsync(id);

			if (schoolProgram == null)
			{
				return NotFound();
			}

			return schoolProgram;
		}

		// POST api/SchoolProgram
		[HttpPost]
		public async Task<ActionResult<SchoolProgram>> PostSchoolProgram([FromBody] SchoolProgram schoolProgram)
		{
			_context.SchoolPrograms.Add(schoolProgram);
			await _context.SaveChangesAsync();

			return CreatedAtAction(nameof(GetSchoolProgram), new { id = schoolProgram.ProgramID }, schoolProgram);
		}

		// PUT api/SchoolProgram/5
		[HttpPut("{id}")]
		public async Task<IActionResult> PutSchoolProgram(int id, [FromBody] SchoolProgram schoolProgram)
		{
			if (id != schoolProgram.ProgramID)
			{
				return BadRequest();
			}

			_context.Entry(schoolProgram).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!_context.SchoolPrograms.Any(e => e.ProgramID == id))
				{
					return NotFound();
				}
				else
				{
					throw;
				}
			}

			return NoContent();
		}

		// DELETE api/SchoolProgram/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteSchoolProgram(int id)
		{
			var schoolProgram = await _context.SchoolPrograms.FindAsync(id);
			if (schoolProgram == null)
			{
				return NotFound();
			}

			_context.SchoolPrograms.Remove(schoolProgram);
			await _context.SaveChangesAsync();

			return NoContent();
		}
	}
}
