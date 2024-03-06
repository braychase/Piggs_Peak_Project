using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/StudentGrade")]
	[ApiController]
	public class StudentGradeController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public StudentGradeController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}

		// GET: api/StudentGrade
		[HttpGet]
		public async Task<IEnumerable<StudentGrade>> Get()
		{
			return await _dbContext.StudentGrades.ToListAsync();
		}

		// GET api/StudentGrade/5
		[HttpGet("{id}")]
		public async Task<ActionResult<StudentGrade>> Get(int id)
		{
			var studentGrade = await _dbContext.StudentGrades.FindAsync(id);

			if (studentGrade == null)
			{
				return NotFound();
			}

			return studentGrade;
		}

		// POST api/StudentGrade
		[HttpPost]
		public async Task<IActionResult> Post([FromBody] StudentGrade studentGrade)
		{
			_dbContext.StudentGrades.Add(studentGrade);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = studentGrade.StudentGradeID }, studentGrade);
		}

		// PUT api/StudentGrade/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] StudentGrade updatedStudentGrade)
		{
			var existingStudentGrade = await _dbContext.StudentGrades.FindAsync(id);

			if (existingStudentGrade == null)
			{
				return NotFound();
			}

			existingStudentGrade.StudentID = updatedStudentGrade.StudentID;
			existingStudentGrade.EffectiveDate = updatedStudentGrade.EffectiveDate;
			existingStudentGrade.SchoolID = updatedStudentGrade.SchoolID;

			await _dbContext.SaveChangesAsync();

			return NoContent();
		}

		// DELETE api/StudentGrade/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			var studentGrade = await _dbContext.StudentGrades.FindAsync(id);

			if (studentGrade == null)
			{
				return NotFound();
			}

			_dbContext.StudentGrades.Remove(studentGrade);
			await _dbContext.SaveChangesAsync();

			return NoContent();
		}
	}
}
