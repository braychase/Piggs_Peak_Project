using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
	public class SchoolProgramController : ControllerBase
	{
		private readonly AppDbContext _dbcontext;
		private readonly ILogger<SchoolProgramController> _logger; // Inject ILogger

		public SchoolProgramController(AppDbContext context, ILogger<SchoolProgramController> logger)
		{
			_dbcontext = context;
			_logger = logger; // Initialize the logger
		}

		// GET: api/Program
		[HttpGet]
		public async Task<ActionResult<IEnumerable<SchoolProgram>>> Get()
		{
			_logger.LogInformation("Fetching all school programs"); // Log fetching action
			var programs = await _dbcontext.SchoolPrograms.ToListAsync();
			_logger.LogInformation($"Found {programs.Count} school programs"); // Log count of programs found
			return programs;
		}

		// GET api/Program/5
		[HttpGet("{id}")]
		public async Task<ActionResult<SchoolProgram>> Get(int id)
		{
			_logger.LogInformation($"Fetching school program with ID: {id}"); // Log fetching action
			var program = await _dbcontext.SchoolPrograms.FindAsync(id);

			if (program == null)
			{
				_logger.LogWarning($"School program with ID: {id} not found"); // Log warning if not found
				return NotFound();
			}

			return program;
		}
	}
}
