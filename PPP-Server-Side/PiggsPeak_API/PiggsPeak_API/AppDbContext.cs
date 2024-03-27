using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

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
        public DbSet<StudentSearch> StudentSearch { get; set; }
        public DbSet<StudentGrade> StudentGrades { get; set; }
		public DbSet<Party> Parties { get; set; }
		public DbSet<Permission> Permissions { get; set; }
		public DbSet<SchoolProgram> SchoolPrograms { get; set; }
		public DbSet<PartyPermission> PartyPermissions { get; set; }
		public DbSet<StudentPhoto> StudentPhotos { get; set; }
		public DbSet<GradeSearch> GradeSearch { get; set; }
		public DbSet<StudentSponsor> StudentSponsors { get; set; }
		public DbSet<SchoolFee> SchoolFees { get; set; }

		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			// Configure composite key for PartyPermission
			modelBuilder.Entity<PartyPermission>()
				.HasKey(pp => new { pp.PartyID, pp.PermissionID });

			var ynConverter = new BoolToStringConverter("N", "Y");

            modelBuilder.Entity<Party>()
                .Property(p => p.IsGroup)
                .HasConversion(ynConverter);
            modelBuilder.Entity<Party>()
                .Property(p => p.IsAdmin)
                .HasConversion(ynConverter);
            modelBuilder.Entity<Party>()
                .Property(p => p.IsDisabled)
                .HasConversion(ynConverter);
            modelBuilder.Entity<Party>()
                .Property(p => p.IsDeleted)
                .HasConversion(ynConverter);

            modelBuilder.Entity<Student>()
				.Property(p => p.Deleted)
                .HasConversion(ynConverter);
            modelBuilder.Entity<Student>()
                .Property(p => p.OVC)
                .HasConversion(ynConverter);
            modelBuilder.Entity<Student>()
				.Property(p => p.Active)
				.HasConversion(ynConverter);
            modelBuilder.Entity<Student>()
                .Property(p => p.NewStudent)
                .HasConversion(ynConverter);
            modelBuilder.Entity<Student>()
                .Property(p => p.Selected)
                .HasConversion(ynConverter);

            modelBuilder.Entity<SchoolFee>()
                .Property(p => p.OVC)
                .HasConversion(ynConverter);
            
            // Additional configurations...

            base.OnModelCreating(modelBuilder);
		}
	}
}
