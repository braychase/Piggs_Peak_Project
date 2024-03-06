using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class GradeSearchController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public GradeSearchController(AppDbContext dbContext)
		{
			_dbContext = dbContext;
		}

		// GET: api/GradeSearch
		[HttpGet]
		public async Task<ActionResult<IEnumerable<GradeSearch>>> Get()
		{
			var grades = await _dbContext.GradeSearch.ToListAsync();
			return Ok(grades);
		}

		// GET api/GradeSearch/5
		[HttpGet("{studentId}")]
		public async Task<ActionResult<IEnumerable<GradeSearch>>> Get(int studentId)
		{
			var gradeSearches = await _dbContext.GradeSearch
				.AsNoTracking()
				.Where(gs => gs.Student_id == studentId)
				.ToListAsync();
			if (gradeSearches == null || gradeSearches.Count == 0)
			{
				return NotFound();
			}

			return Ok(gradeSearches);
		}
	}
}
