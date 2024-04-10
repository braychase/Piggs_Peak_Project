using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class SchoolFeeController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<SchoolFeeController> _logger;

		public SchoolFeeController(AppDbContext dbContext, ILogger<SchoolFeeController> logger)
		{
			_dbContext = dbContext;
			_logger = logger;
		}

		// GET: api/SchoolFee
		[HttpGet]
		public async Task<ActionResult<IEnumerable<SchoolFee>>> Get()
		{
			_logger.LogInformation("Fetching all school fees");
			var schoolFees = await _dbContext.SchoolFees.AsNoTracking().ToListAsync();
			_logger.LogInformation($"Found {schoolFees.Count} school fee entries");
			return schoolFees;
		}

		// GET: api/SchoolFee/5
		[HttpGet("{schoolId}")]
		public async Task<ActionResult<IEnumerable<SchoolFee>>> GetBySchoolId(int schoolId)
		{
			_logger.LogInformation($"Fetching school fees for SchoolId: {schoolId}");
			var schoolFees = await _dbContext.SchoolFees
											  .Where(fee => fee.SchoolID == schoolId)
											  .AsNoTracking()
											  .ToListAsync();

			if (!schoolFees.Any())
			{
				_logger.LogWarning($"No school fees found for SchoolId: {schoolId}");
				return NotFound($"No school fees found for SchoolId: {schoolId}");
			}

			_logger.LogInformation($"Found {schoolFees.Count} school fee entries for SchoolId: {schoolId}");
			return schoolFees;
		}

	}
}
