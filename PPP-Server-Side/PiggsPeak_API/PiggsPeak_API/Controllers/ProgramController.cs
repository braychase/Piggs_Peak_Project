using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ProgramController : ControllerBase
	{
		private readonly AppDbContext _context;

		public ProgramController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/Program
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Program>>> Get()
		{
			return await _context.Programs.ToListAsync();
		}

		// GET api/Program/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Program>> Get(int id)
		{
			var program = await _context.Programs.FindAsync(id);

			if (program == null)
			{
				return NotFound();
			}

			return program;
		}

		// POST api/Program
		[HttpPost]
		public async Task<ActionResult<Program>> Post([FromBody] Program program)
		{
			_context.Programs.Add(program);
			await _context.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = program.ProgramID }, program);
		}

		// PUT api/Program/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] Program program)
		{
			if (id != program.ProgramID)
			{
				return BadRequest();
			}

			_context.Entry(program).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!_context.Programs.Any(e => e.ProgramID == id))
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

		// DELETE api/Program/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			var program = await _context.Programs.FindAsync(id);
			if (program == null)
			{
				return NotFound();
			}

			_context.Programs.Remove(program);
			await _context.SaveChangesAsync();

			return NoContent();
		}
	}
}
