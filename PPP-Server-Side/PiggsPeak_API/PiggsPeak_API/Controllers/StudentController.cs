using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/Student")]
	[ApiController]
	public class StudentController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public StudentController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}

		// GET: api/Student
		[HttpGet]
		public async Task<IEnumerable<Student>> Get()
		{
			var students = await _dbContext.Students.ToListAsync();

			// Handle null BirthDate values
			foreach (var student in students)
			{
				if (student.BirthDate == null || student.BirthDate == DateTime.MinValue)
				{
					student.BirthDate = DateTime.Now;
				}
			}

			return students;
		}

		// GET api/Student/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Student>> Get(int id)
		{
			var student = await _dbContext.Students.FindAsync(id);

			if (student == null)
			{
				return NotFound();
			}

			return student;
		}

		// POST api/Student
		[HttpPost]
		public async Task<IActionResult> Post([FromBody] Student student)
		{
			_dbContext.Students.Add(student);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = student.StudentID }, student);
		}

		// PUT api/Student/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] Student updatedStudent)
		{
			var existingStudent = await _dbContext.Students.FindAsync(id);

			if (existingStudent == null)
			{
				return NotFound();
			}

			existingStudent.StudentName = updatedStudent.StudentName;
			existingStudent.FirstName = updatedStudent.FirstName;
			existingStudent.LastName = updatedStudent.LastName;
			existingStudent.StudentCode = updatedStudent.StudentCode;
			existingStudent.BirthDate = updatedStudent.BirthDate;
			existingStudent.Gender = updatedStudent.Gender;
			existingStudent.Sponsored = updatedStudent.Sponsored;
			existingStudent.OVC = updatedStudent.OVC;
			existingStudent.Deleted = updatedStudent.Deleted;
			existingStudent.Active = updatedStudent.Active;

			await _dbContext.SaveChangesAsync();

			return NoContent();
		}

		// DELETE api/Student/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			var student = await _dbContext.Students.FindAsync(id);

			if (student == null)
			{
				return NotFound();
			}

			_dbContext.Students.Remove(student);
			await _dbContext.SaveChangesAsync();

			return NoContent();
		}
	}
}
