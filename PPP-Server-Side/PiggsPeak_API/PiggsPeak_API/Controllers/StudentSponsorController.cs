using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Authorize]
	[Route("api/StudentSponsor")]
	[ApiController]
	public class StudentSponsorController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public StudentSponsorController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}

		// GET: api/StudentSponsor
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentSponsor>>> Get()
		{
			return await _dbContext.StudentSponsors.ToListAsync();
		}

		// GET api/StudentSponsor/5
		[HttpGet("{id}")]
		public async Task<ActionResult<IEnumerable<StudentSponsor>>> GetByStudentId(int id)
		{
			var studentSponsors = await _dbContext.StudentSponsors
			.AsNoTracking()
			.Where(ss => ss.StudentId == id)
			.ToListAsync();

			if (studentSponsors == null || !studentSponsors.Any())
			{
				return NotFound();
			}

			return studentSponsors;
		}


		// POST api/StudentSponsor
		[HttpPost]
		public async Task<ActionResult<StudentSponsor>> Post([FromBody] StudentSponsor studentSponsor)
		{
			_dbContext.StudentSponsors.Add(studentSponsor);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = studentSponsor.StudentId }, studentSponsor);
		}

		// PUT api/StudentSponsor/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] StudentSponsor studentSponsor)
		{
			if (id != studentSponsor.StudentId)
			{
				return BadRequest();
			}

			_dbContext.Entry(studentSponsor).State = EntityState.Modified;

			try
			{
				await _dbContext.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!_dbContext.StudentSponsors.Any(e => e.StudentId == id))
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

		// DELETE api/StudentSponsor/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			var studentSponsor = await _dbContext.StudentSponsors.FindAsync(id);
			if (studentSponsor == null)
			{
				return NotFound();
			}

			_dbContext.StudentSponsors.Remove(studentSponsor);
			await _dbContext.SaveChangesAsync();

			return NoContent();
		}
	}
}
