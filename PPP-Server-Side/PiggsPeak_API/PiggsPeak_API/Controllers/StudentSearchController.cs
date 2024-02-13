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
	public class StudentSearchController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public StudentSearchController(AppDbContext dbContext)
		{
			_dbContext = dbContext;
		}

		// GET: api/StudentSearch
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentSearch>>> Get()
		{
			var studentsReduced = await _dbContext.StudentSearch
				.ToListAsync();

			return Ok(studentsReduced);
		}

		// GET api/StudentSearch/5
		[HttpGet("{id}")]
		public async Task<ActionResult<StudentSearch>> Get(int id)
		{
			var StudentSearch = await _dbContext.StudentSearch.FindAsync(id);

			if (StudentSearch == null)
			{
				return NotFound();
			}

			return Ok(StudentSearch);
		}
	}
}
