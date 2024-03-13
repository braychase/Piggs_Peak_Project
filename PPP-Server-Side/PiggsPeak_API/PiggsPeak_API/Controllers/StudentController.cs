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
    [ApiController]
    [Route("api/Student")]
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
                //	`
            }

			return students;
		}

		// GET api/Student/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Student>> Get(int id)
		{
			//var student = await _dbContext.Students.FindAsync(id);

            var student = _dbContext.Students
                .Include(s => s.School)
                .SingleOrDefault(s => s.StudentID == id);
			
			
            if (student == null)
			{
				return NotFound();
			}

			return student;
		}

		[HttpPost]
		public async Task<IActionResult> Post([FromBody] Student student)
		{
			// Assuming the client sends only the schoolCode
			if (!string.IsNullOrWhiteSpace(student.School?.SchoolCode))
			{
				// Find the school in the database by the provided schoolCode
				var school = await _dbContext.Schools.FirstOrDefaultAsync(s => s.SchoolCode == student.School.SchoolCode);
				if (school != null)
				{
					// Set the schoolID and description based on the found school
					student.SchoolID = school.SchoolID; // Ensure the student is linked to the correct school ID
														// Optionally, if you want to keep the school entity updated in student
					student.School = school;
				}
				else
				{
					// Handle case where the schoolCode does not match any school in the database
					return BadRequest("Invalid school code.");
				}
			}
			else
			{
				return BadRequest("School code is required.");
			}

			// Proceed to add the student now that the school information has been filled in
			_dbContext.Students.Add(student);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = student.StudentID }, student);
		}


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
			//existingStudent.ModifiedTimeZone = TimeZoneInfo.Local.Id;

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
