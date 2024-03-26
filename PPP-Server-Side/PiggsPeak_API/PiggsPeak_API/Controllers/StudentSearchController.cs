using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace PiggsPeak_API.Controllers
{
	//[Authorize]
	[ApiController]
	[Route("api/[controller]")]
	public class StudentSearchController : ControllerBase
	{
		private readonly AppDbContext _dbContext;
		private readonly ILogger<StudentSearchController> _logger; // Add logger

		public StudentSearchController(AppDbContext dbContext, ILogger<StudentSearchController> logger)
		{
			_dbContext = dbContext;
			_logger = logger; // Initialize the logger
		}


		// GET: api/StudentSearch?pageNumber=1&pageSize=10&firstName=&lastName=&schoolCode=&gender=&form=&sortField=FirstName&sortOrder=ASC
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentSearch>>> Get(
			int pageNumber = 1,
			int pageSize = 10,
			string firstName = "",
			string lastName = "",
			string schoolCode = "",
			string gender = "",
			string form = "",
			string sortField = "none",
			string sortOrder = "ASC",
			string sponsoredOnly = "N")
		{
			_logger.LogInformation($"Initiating student search with filters: First Name: {firstName}, Last Name: {lastName}, School Code: {schoolCode}, Gender: {gender}, Form: {form}, Page Number: {pageNumber}, Page Size: {pageSize}, SortField: {sortField}, SortOrder: {sortOrder}, SponsoredOnly: {sponsoredOnly}");

			if (pageNumber < 1 || pageSize < 1)
			{
				_logger.LogWarning("PageNumber and PageSize must be greater than 0.");
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

			if (!string.IsNullOrWhiteSpace(sponsoredOnly) && sponsoredOnly.ToUpper() == "Y")
			{
				query = query.Where(s => s.Sponsored == "Y");
			}

			if (!string.IsNullOrWhiteSpace(form) && form != "all")
			{
				if (int.TryParse(form, out int formValue))
				{
					query = query.Where(s => s.Form == formValue);
				}
			}

			if (!string.Equals(sortField, "none", StringComparison.OrdinalIgnoreCase))
			{
				bool descending = string.Equals(sortOrder, "DESC", StringComparison.OrdinalIgnoreCase);

				query = sortField.ToLowerInvariant() switch
				{
					"firstname" => descending ? query.OrderByDescending(s => s.FirstName) : query.OrderBy(s => s.FirstName),
					"lastname" => descending ? query.OrderByDescending(s => s.LastName) : query.OrderBy(s => s.LastName),
					"gender" => descending ? query.OrderByDescending(s => s.Gender) : query.OrderBy(s => s.Gender),
					"form" => descending ? query.OrderByDescending(s => s.Form) : query.OrderBy(s => s.Form),
					_ => query
				};
			}

			var totalCount = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalCount / (double)pageSize);
			var students = await query
								.Skip((pageNumber - 1) * pageSize)
								.Take(pageSize)
								.ToListAsync();

			_logger.LogInformation($"Search completed. Total Count: {totalCount}, Total Pages: {totalPages}, Current Page: {pageNumber}, Page Size: {pageSize}");

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
			_logger.LogInformation($"Fetching student search result with ID: {id}");
			var studentSearch = await _dbContext.StudentSearch.FindAsync(id);

			if (studentSearch == null)
			{
				_logger.LogWarning($"Student search result with ID: {id} not found");
				return NotFound();
			}

			return Ok(studentSearch);
		}

		[HttpGet("SchoolSummary/{schoolId}")]
		public async Task<ActionResult> GetSchoolSummary(int schoolId)
		{
			_logger.LogInformation($"Fetching summary for school ID: {schoolId}");

			var newStudents = await _dbContext.Students
				.Where(s => s.SchoolID == schoolId && s.StartYear == 2024 && s.NewStudent == "Y")
				.GroupBy(s => s.Gender)
				.Select(g => new { Gender = g.Key, Count = g.Count() })
				.ToListAsync();

			var selectedStudents = await _dbContext.Students
				.Where(s => s.SchoolID == schoolId && s.StartYear == 2024 && s.NewStudent == "Y" && s.Selected == "Y")
				.GroupBy(s => s.Gender)
				.Select(g => new { Gender = g.Key, Count = g.Count() })
				.ToListAsync();

			var activeStudents = await _dbContext.Students
				.Where(s => s.SchoolID == schoolId && s.StartYear != 2024 && s.Active == "Y")
				.GroupBy(s => s.Gender)
				.Select(g => new { Gender = g.Key, Count = g.Count() })
				.ToListAsync();

			// Calculate total counts for each category
			var newTotal = newStudents.Sum(n => n.Count);
			var selectedTotal = selectedStudents.Sum(s => s.Count);
			var currentTotal = activeStudents.Sum(a => a.Count);

			// Correctly calculate male and female totals
			var totalMale = selectedStudents.Where(s => s.Gender == "M").Sum(s => s.Count) +
							activeStudents.Where(a => a.Gender == "M").Sum(a => a.Count);

			var totalFemale = selectedStudents.Where(s => s.Gender == "F").Sum(s => s.Count) +
							  activeStudents.Where(a => a.Gender == "F").Sum(a => a.Count);

			// Aggregate data from queries above to form the response
			var summary = new
			{
				New = newStudents,
				Selected = selectedStudents,
				Current = activeStudents,
				Total = new
				{
					Male = totalMale,
					Female = totalFemale,
					Total = selectedTotal + currentTotal
				},
				Totals = new // Include new total variables
				{
					NewTotal = newTotal,
					SelectedTotal = selectedTotal,
					CurrentTotal = currentTotal
				}
			};

			return Ok(summary);
		}
	}
}

	

