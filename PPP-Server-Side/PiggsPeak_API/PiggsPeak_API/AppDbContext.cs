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
		public DbSet<Party> Parties { get; set; }
		public DbSet<Permission> Permissions { get; set; }
		public DbSet<PartyPermission> PartyPermissions { get; set; }
		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			// Configure composite key for PartyPermission
			modelBuilder.Entity<PartyPermission>()
				.HasKey(pp => new { pp.PartyID, pp.PermissionID });

			// Additional configurations...

			base.OnModelCreating(modelBuilder);
		}
	}
}
