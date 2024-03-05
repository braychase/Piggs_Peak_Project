using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Authorize]
	[Route("api/School")]
	[ApiController]
	public class SchoolController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public SchoolController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}


		[HttpGet]
		public async Task<IEnumerable<School>> Get()
		{
			return await _dbContext.Schools.ToListAsync();
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<School>> Get(int id)
		{
			var school = await _dbContext.Schools.FindAsync(id);

			if (school == null)
			{
				return NotFound();
			}

			return school;
		}

		[HttpPost]
		public async Task<IActionResult> Post([FromBody] School school)
		{
			_dbContext.Schools.Add(school);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = school.SchoolID }, school);
		}

		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] School updatedSchool)
		{
			var existingSchool = await _dbContext.Schools.FindAsync(id);

			if (existingSchool == null)
			{
				return NotFound();
			}

			existingSchool.SchoolCode = updatedSchool.SchoolCode;
			existingSchool.Description = updatedSchool.Description;

			await _dbContext.SaveChangesAsync();

			return NoContent();
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			var school = await _dbContext.Schools.FindAsync(id);

			if (school == null)
			{
				return NotFound();
			}

			_dbContext.Schools.Remove(school);
			await _dbContext.SaveChangesAsync();

			return NoContent();
		}
	}
}
