using Microsoft.EntityFrameworkCore;
using PiggsPeak_API.Classes;

namespace PiggsPeak_API
{
	public class AppDbContext : DbContext
	{
		public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
		{
		}

		public DbSet<School> Schools { get; set; }

		public DbSet<Student> Students { get; set; }

		public DbSet<StudentGrade> StudentGrades { get; set; }
	}
}
