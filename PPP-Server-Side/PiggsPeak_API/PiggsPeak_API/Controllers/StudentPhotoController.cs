using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes; // Make sure this is the correct namespace for your entities
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PiggsPeak_API.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class StudentPhotoController : ControllerBase
	{
		private readonly AppDbContext _dbContext;

		public StudentPhotoController(AppDbContext dbContext)
		{
			_dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
		}

		// GET: api/StudentPhoto
		[HttpGet]
		public async Task<ActionResult<IEnumerable<StudentPhoto>>> Get()
		{
			var studentPhotos = await _dbContext.StudentPhotos
				.Select(sp => new StudentPhoto
				{
					PhotoId = sp.PhotoId,
					PhotoData = sp.PhotoData,
					StudentId = sp.StudentId,
					PhotoDate = sp.PhotoDate,
					PhotoCropText = sp.PhotoCropText
					// Explicitly exclude the Student navigation property
				})
				.ToListAsync();

			return studentPhotos;
		}

		// GET api/StudentPhoto/5
		[HttpGet("{id}")]
		public async Task<ActionResult<StudentPhoto>> Get(int id)
		{
			var studentPhoto = await _dbContext.StudentPhotos
			.Select(sp => new StudentPhoto
				{
					PhotoId = sp.PhotoId,
					PhotoData = sp.PhotoData,
					StudentId = sp.StudentId,
					PhotoDate = sp.PhotoDate,
					PhotoCropText = sp.PhotoCropText
				})
				.FirstOrDefaultAsync(sp => sp.PhotoId == id);

			if (studentPhoto == null)
			{
				return NotFound();
			}

			return studentPhoto;
		}

		// POST api/StudentPhoto
		[HttpPost]
		public async Task<ActionResult<StudentPhoto>> Post([FromBody] StudentPhoto studentPhoto)
		{
			_dbContext.StudentPhotos.Add(studentPhoto);
			await _dbContext.SaveChangesAsync();

			return CreatedAtAction(nameof(Get), new { id = studentPhoto.PhotoId }, studentPhoto);
		}

		// PUT api/StudentPhoto/5
		[HttpPut("{id}")]
		public async Task<IActionResult> Put(int id, [FromBody] StudentPhoto updatedStudentPhoto)
		{
			if (id != updatedStudentPhoto.PhotoId)
			{
				return BadRequest();
			}

			_dbContext.Entry(updatedStudentPhoto).State = EntityState.Modified;

			try
			{
				await _dbContext.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!_dbContext.StudentPhotos.Any(sp => sp.PhotoId == id))
				{
					return NotFound();
				}
				else
				{
					throw;
				}
			}

			return NoContent();
		}

		// DELETE api/StudentPhoto/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> Delete(int id)
		{
			var studentPhoto = await _dbContext.StudentPhotos.FindAsync(id);
			if (studentPhoto == null)
			{
				return NotFound();
			}

			_dbContext.StudentPhotos.Remove(studentPhoto);
			await _dbContext.SaveChangesAsync();

			return NoContent();
		}
	}
}
