using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace PiggsPeak_API.Controllers
{
	[ApiController]
	[Route("api/StudentStatuses")]
	public class StudentStatusController : ControllerBase
	{
		// GET: api/StudentStatuses
		[HttpGet]
		public ActionResult<IEnumerable<object>> Get()
		{
			var statuses = Enum.GetValues(typeof(StudentStatus))
								.Cast<StudentStatus>()
								.Select(status => new { Id = (int)status, Name = status.ToString() });
			return Ok(statuses);
		}

		// GET api/StudentStatuses/5
		[HttpGet("{id}")]
		public ActionResult<object> Get(int id)
		{
			// Try to parse the ID to the StudentStatus enum
			if (Enum.IsDefined(typeof(StudentStatus), id))
			{
				var status = (StudentStatus)id;
				return Ok(new { Id = id, Name = status.ToString() });
			}
			else
			{
				// If the ID does not correspond to any StudentStatus, return NotFound.
				return NotFound();
			}
		}
	}
}
