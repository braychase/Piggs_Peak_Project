/*
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class StudentReducedController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public StudentReducedController(AppDbContext dbContext)
		{
			_dbContext = dbContext;
		}

		// GET: api/StudentReduced
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentReduced>>> Get()
		{
			var studentsReduced = await _dbContext.Students
				.Include(s => s.School)
				.Select(s => new StudentReduced
				{
					StudentID = s.StudentID,
					StudentName = s.StudentName,
					Gender = s.Gender,
					SchoolID = s.SchoolID,
					SchoolName = s.School.Description // Adjust based on actual column you wish to display
				})
				.ToListAsync();

			return Ok(studentsReduced);
		}

		// GET api/StudentReduced/5
		[HttpGet("{id}")]
		public async Task<ActionResult<StudentReduced>> Get(int id)
		{
			var studentReduced = await _dbContext.Students
				.Where(s => s.StudentID == id)
				.Include(s => s.School)
				.Select(s => new StudentReduced
				{
					StudentID = s.StudentID,
					StudentName = s.StudentName,
					Gender = s.Gender,
					SchoolID = s.SchoolID,
					SchoolName = s.School.Description // Adjust based on actual column you wish to display
				})
				.FirstOrDefaultAsync();

			if (studentReduced == null)
			{
				return NotFound();
			}

			return Ok(studentReduced);
		}
	}
}
*/
