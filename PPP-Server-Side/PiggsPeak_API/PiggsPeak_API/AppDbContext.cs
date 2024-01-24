using Microsoft.EntityFrameworkCore;

namespace PiggsPeak_API
{
	public class AppDbContext : DbContext
	{
		public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
		{
		}

		public DbSet<School> Schools { get; set; }
	}
}
