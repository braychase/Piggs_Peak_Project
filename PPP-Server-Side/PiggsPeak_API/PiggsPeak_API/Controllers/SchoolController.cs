using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PiggsPeak_API.Controllers
{
	[Route("api/School")]
	[ApiController]
	public class SchoolController : ControllerBase
	{
		// GET: api/<SchoolController>
		[HttpGet]
		public IEnumerable<School> Get()
		{
			
			return new School[] {new School(1, "One", "school one"), new School(2, "Two", "school two")};
		}

		// GET api/<SchoolController>/5
		[HttpGet("{id}")]
		public string Get(int id)
		{
			return "value";
		}

		// POST api/<SchoolController>
		[HttpPost]
		public void Post([FromBody] string value)
		{
		}

		// PUT api/<SchoolController>/5
		[HttpPut("{id}")]
		public void Put(int id, [FromBody] string value)
		{
		}

		// DELETE api/<SchoolController>/5
		[HttpDelete("{id}")]
		public void Delete(int id)
		{
		}
	}
}
