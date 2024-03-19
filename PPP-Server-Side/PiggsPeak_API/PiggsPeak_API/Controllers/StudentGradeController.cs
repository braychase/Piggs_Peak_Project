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
	[Route("api/StudentGrade")]
	public class StudentGradeController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<StudentGradeController> _logger; // Add logger

		public StudentGradeController(AppDbContext dbContext, ILogger<StudentGradeController> logger) // Inject ILogger
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_logger = logger; // Initialize the logger
		}

		// GET: api/StudentGrade
		[HttpGet]
		public async Task<IEnumerable<StudentGrade>> Get()
		{
			_logger.LogInformation("Fetching all student grades");
			var studentGrades = await _dbContext.StudentGrades.ToListAsync();
			_logger.LogInformation($"Found {studentGrades.Count} student grades");
			return studentGrades;
		}

		// GET api/StudentGrade/5
		[HttpGet("{id}")]
		public async Task<ActionResult<StudentGrade>> Get(int id)
		{
			_logger.LogInformation($"Fetching student grade with ID: {id}");
			var studentGrade = await _dbContext.StudentGrades.FindAsync(id);

			if (studentGrade == null)
			{
				_logger.LogWarning($"Student grade with ID: {id} not found");
				return NotFound();
			}

			return studentGrade;
		}

		// POST api/StudentGrade
		[HttpPost]
		public async Task<IActionResult> Post([FromBody] StudentGrade studentGrade)
		{
			_logger.LogInformation($"Creating new student grade for student ID: {studentGrade.StudentID}");
			_dbContext.StudentGrades.Add(studentGrade);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Student grade with ID: {studentGrade.StudentGradeID} created successfully");

			return CreatedAtAction(nameof(Get), new { id = studentGrade.StudentGradeID }, studentGrade);
		}

		// PUT api/StudentGrade/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] StudentGrade updatedStudentGrade)
		{
			_logger.LogInformation($"Updating student grade with ID: {id}");
			var existingStudentGrade = await _dbContext.StudentGrades.FindAsync(id);

			if (existingStudentGrade == null)
			{
				_logger.LogWarning($"Student grade with ID: {id} not found for update");
				return NotFound();
			}

			existingStudentGrade.StudentID = updatedStudentGrade.StudentID;
			existingStudentGrade.EffectiveDate = updatedStudentGrade.EffectiveDate;
			existingStudentGrade.SchoolID = updatedStudentGrade.SchoolID;

			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Student grade with ID: {id} updated successfully");

			return NoContent();
		}

		// DELETE api/StudentGrade/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			_logger.LogInformation($"Deleting student grade with ID: {id}");
			var studentGrade = await _dbContext.StudentGrades.FindAsync(id);

			if (studentGrade == null)
			{
				_logger.LogWarning($"Student grade with ID: {id} not found for deletion");
				return NotFound();
			}

			_dbContext.StudentGrades.Remove(studentGrade);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Student grade with ID: {id} deleted successfully");

			return NoContent();
		}
	}
}
