using Microsoft.AspNetCore.Authorization;
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

		// GET: api/StudentSearch?pageNumber=1&pageSize=10&firstName=&lastName=&schoolCode=&gender=&form=
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentSearch>>> Get(
			int pageNumber = 1,
			int pageSize = 10,
			string firstName = "",
			string lastName = "",
			string schoolCode = "",
			string gender = "",
			string form = "")
		{
			if (pageNumber < 1 || pageSize < 1)
			{
				return BadRequest("PageNumber and PageSize must be greater than 0.");
			}

			var query = _dbContext.StudentSearch.AsQueryable();

			if (!string.IsNullOrWhiteSpace(firstName))
			{
				query = query.Where(s => EF.Functions.Like(s.FirstName, $"{firstName}%"));
			}

			if (!string.IsNullOrWhiteSpace(lastName))
			{
				query = query.Where(s => EF.Functions.Like(s.LastName, $"{lastName}%"));
			}

			if (!string.IsNullOrWhiteSpace(schoolCode) && schoolCode != "all")
			{
				query = query.Where(s => s.SchoolCode == schoolCode);
			}

			if (!string.IsNullOrWhiteSpace(gender) && gender != "all")
			{
				query = query.Where(s => s.Gender == gender);
			}

			if (!string.IsNullOrWhiteSpace(form) && form != "all")
			{
				if (int.TryParse(form, out int formValue))
				{
					query = query.Where(s => s.Form == formValue);
				}
			}

			var totalCount = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalCount / (double)pageSize);
			var students = await query
								.Skip((pageNumber - 1) * pageSize)
								.Take(pageSize)
								.ToListAsync();

			var response = new
			{
				TotalCount = totalCount,
				TotalPages = totalPages,
				CurrentPage = pageNumber,
				PageSize = pageSize,
				Students = students
			};

			return Ok(response);
		}

		// GET api/StudentSearch/5
		[HttpGet("{id}")]
		public async Task<ActionResult<StudentSearch>> Get(int id)
		{
			var studentSearch = await _dbContext.StudentSearch.FindAsync(id);

			if (studentSearch == null)
			{
				return NotFound();
			}

			return Ok(studentSearch);
		}
	}
}
