using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class SchoolProgramController : ControllerBase
	{
		private readonly AppDbContext _dbcontext;

		public SchoolProgramController(AppDbContext context)
		{
			_dbcontext = context;
		}

		// GET: api/Program
		[HttpGet]
		public async Task<ActionResult<IEnumerable<SchoolProgram>>> Get()
		{
			return await _dbcontext.Programs.ToListAsync();
		}

		// GET api/Program/5
		[HttpGet("{id}")]
		public async Task<ActionResult<SchoolProgram>> Get(int id)
		{
			var program = await _dbcontext.Programs.FindAsync(id);

			if (program == null)
			{
				return NotFound();
			}

			return program;
		}
	}
}
