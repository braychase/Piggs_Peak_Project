using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
    //[Authorize]
	[ApiController]
    [Route("api/[controller]")]
    public class GradeSearchController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<GradeSearchController> _logger;

		public GradeSearchController(AppDbContext dbContext, ILogger<GradeSearchController> logger)
		{
			_dbContext = dbContext;
			_logger = logger;
		}

		// GET: api/GradeSearch
		[HttpGet]
		public async Task<ActionResult<IEnumerable<GradeSearch>>> Get()
		{
			_logger.LogInformation("Fetching all grades");
			var grades = await _dbContext.GradeSearch.ToListAsync();
			return Ok(grades);
		}

		// GET api/GradeSearch/5
		[HttpGet("{studentId}")]
		public async Task<ActionResult<IEnumerable<GradeSearch>>> Get(int studentId)
		{
			_logger.LogInformation($"Fetching grades for student ID: {studentId}");
			var gradeSearches = await _dbContext.GradeSearch
				.AsNoTracking()
				.Where(gs => gs.Student_id == studentId)
				.ToListAsync();
			if (gradeSearches == null || gradeSearches.Count == 0)
			{
				_logger.LogWarning($"No grades found for student ID: {studentId}");
				return NotFound();
			}

			return Ok(gradeSearches);
		}
	}
}
