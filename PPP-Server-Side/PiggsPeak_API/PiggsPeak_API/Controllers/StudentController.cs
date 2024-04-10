using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace PiggsPeak_API.Controllers
{
    //[Authorize]
    [ApiController]
    [Route("api/Student")]
    public class StudentController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<StudentController> _logger;

		public StudentController(AppDbContext dbContext, ILogger<StudentController> logger)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
			_logger = logger;
		}

		// GET: api/Student
		[HttpGet]
		public async Task<IEnumerable<Student>> Get()
		{
			_logger.LogInformation("Fetching all students");
			var students = await _dbContext.Students
				.Include(s => s.School) // Eager loading of the School navigation property
				.ToListAsync();

			foreach (var student in students)
			{
                // Handle null BirthDate values
                if (student.BirthDate == null || student.BirthDate == DateTime.MinValue)
					student.BirthDate = DateTime.Now;

				//if (student.School == null)
				//	student.School = await _dbContext.Schools.FindAsync(1);

                //if (student.Grades == null)
                //                student.Grades =
            }

			return students;
		}

		// GET api/Student/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Student>> Get(int id)
		{
			//var student = await _dbContext.Students.FindAsync(id);

			_logger.LogInformation($"Fetching student with ID: {id}");

			var student = _dbContext.Students
                .Include(s => s.School)
                .Include(s => s.SchoolFee)
                .FirstOrDefault(s => s.StudentID == id);
						
            if (student == null)
			{
				_logger.LogWarning($"Student with ID: {id} not found");
				return NotFound();
			}

			return student;
		}

		[HttpPost]
		public async Task<IActionResult> Post([FromBody] Student student)
		{
			_logger.LogInformation($"Creating new student with name: {student.StudentName}");

			// Check for a valid school code
			if (string.IsNullOrWhiteSpace(student.School?.SchoolCode))
			{
				return BadRequest("School code is required.");
			}

			// Find the school by the provided schoolCode
			var school = await _dbContext.Schools
				.FirstOrDefaultAsync(s => s.SchoolCode == student.School.SchoolCode);
			if (school == null)
			{
				// Return a bad request if the school code is invalid
				return BadRequest("Invalid school code.");
			}

			// Generate the StudentCode with the school code and the current year
			int currentYear = DateTime.Now.Year;
			string prefix = $"{school.SchoolCode}-{currentYear}-"; // e.g., PCH-2024-
			var lastStudentCode = await _dbContext.Students
									.Where(s => s.StudentCode.StartsWith(prefix))
									.OrderByDescending(s => s.StudentCode)
									.Select(s => s.StudentCode)
									.FirstOrDefaultAsync();

			int nextNumber = 1;
			if (lastStudentCode != null)
			{
				string numberStr = lastStudentCode.Substring(lastStudentCode.LastIndexOf('-') + 1);
				if (int.TryParse(numberStr, out int lastNumber))
				{
					nextNumber = lastNumber + 1;
				}
			}

			student.StudentCode = $"{prefix}{nextNumber:00}"; // e.g., PCH-2024-01
			student.SchoolID = school.SchoolID; // Link student to the correct school ID
			student.School = new School { SchoolID = school.SchoolID, SchoolCode = school.SchoolCode, Description = school.Description }; // Full school object with description

			// Add the student to the database context
			_dbContext.Students.Add(student);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Student with ID: {student.StudentID} created successfully");

			return CreatedAtAction(nameof(Get), new { id = student.StudentID }, student);
		}




		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] Student updatedStudent)
		{
			_logger.LogInformation($"Updating student with ID: {id}");
			var existingStudent = await _dbContext.Students.FindAsync(id);

			if (existingStudent == null)
			{
				_logger.LogWarning($"Student with ID: {id} not found for update");
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
			existingStudent.Form = updatedStudent.Form;
			existingStudent.SchoolID = updatedStudent.SchoolID;
			existingStudent.SponsorStart = updatedStudent.SponsorStart;
			existingStudent.FatherLiving = updatedStudent.FatherLiving;
			existingStudent.FatherAtHome = updatedStudent.FatherAtHome;
			existingStudent.FatherWorking = updatedStudent.FatherWorking;
			existingStudent.FatherUnknown = updatedStudent.FatherUnknown;
			existingStudent.MotherLiving = updatedStudent.MotherLiving;
			existingStudent.MotherAtHome = updatedStudent.MotherAtHome;
			existingStudent.MotherWorking = updatedStudent.MotherWorking;
			existingStudent.MotherUnknown = updatedStudent.MotherUnknown;
			existingStudent.FavouriteSubject = updatedStudent.FavouriteSubject;
			existingStudent.Narritave = updatedStudent.Narritave;
			existingStudent.Aspirations = updatedStudent.Aspirations;
			existingStudent.Notes = updatedStudent.Notes;
			existingStudent.Version = updatedStudent.Version;
			existingStudent.CreatedBy = updatedStudent.CreatedBy;
			existingStudent.CreatedDate = updatedStudent.CreatedDate;
			existingStudent.CreatedTimeZone = updatedStudent.CreatedTimeZone;
			existingStudent.ModifiedBy = updatedStudent.ModifiedBy;
			existingStudent.ModifiedDate = DateTime.UtcNow;
			existingStudent.Priority = updatedStudent.Priority;
			existingStudent.Recommend = updatedStudent.Recommend;
			existingStudent.MiddleName = updatedStudent.MiddleName;
			existingStudent.PrimarySchool = updatedStudent.PrimarySchool;
			existingStudent.DateEnrolled = updatedStudent.DateEnrolled;
			existingStudent.YearFinished = updatedStudent.YearFinished;
			existingStudent.StartYear = updatedStudent.StartYear;
			existingStudent.Selected = updatedStudent.Selected;
			existingStudent.Status = updatedStudent.Status;
			//existingStudent.ModifiedTimeZone = TimeZoneInfo.Local.Id;

			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Student with ID: {id} updated successfully");

			return NoContent();
		}


		// DELETE api/Student/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			_logger.LogInformation($"Deleting student with ID: {id}");
			var student = await _dbContext.Students.FindAsync(id);

			if (student == null)
			{
				_logger.LogWarning($"Student with ID: {id} not found for deletion");
				return NotFound();
			}

			_dbContext.Students.Remove(student);
			await _dbContext.SaveChangesAsync();
			_logger.LogInformation($"Student with ID: {id} deleted successfully");

			return NoContent();
		}
	}
}
