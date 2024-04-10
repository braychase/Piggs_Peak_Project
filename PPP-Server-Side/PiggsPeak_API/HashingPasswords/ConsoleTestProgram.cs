using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using PiggsPeak_API.Classes;
using PiggsPeak_API;
using System;
using System.Linq;
using System.Linq.Expressions;
using Microsoft.Extensions.Configuration;

class Program
{
	static void Main(string[] args)
	{
		var services = new ServiceCollection();
        string s;
		if (Environment.MachineName == "gordonCole")
			s = "Server=gordonCole\\SQLEXPRESS;Database=PiggsPeakProject;User ID=PPP_User;Password=PPP_Password;TrustServerCertificate=True;MultipleActiveResultSets=true";
		else if (Environment.MachineName == "SJ-CRENDEL-ZBG8")
			s = "Database=PPP_Web;User ID=PPP_User;Password=PPP_Password;TrustServerCertificate=True;MultipleActiveResultSets=true";
		else if (Environment.MachineName == "SAMSERVER3")
			s = "Database=PPP_Web;User ID=PPP_User;Password=PPP_Password;TrustServerCertificate=True;MultipleActiveResultSets=true";
		else
            s = "Server=BRAYDENSPC\\SQLEXPRESS;Database=PiggsPeakProject;User ID=PPP_User;Password=PPP_Password;TrustServerCertificate=True;MultipleActiveResultSets=true";
        services.AddDbContext<AppDbContext>(options => options.UseSqlServer(s));
        services.AddScoped<IPasswordHasher<Party>, PasswordHasher<Party>>();

		try
		{
			using (var scope = services.BuildServiceProvider().CreateScope())
			{
				var scopedProvider = scope.ServiceProvider;
				var dbContext = scopedProvider.GetRequiredService<AppDbContext>();

				// Hash passwords
				//HashPasswords(dbContext, scopedProvider).Wait(); // Making the call asynchronous
				testStudentStatus(dbContext).Wait();
			}

			Console.WriteLine("DONE !");
		}
		catch (Exception ex)
		{
			Console.WriteLine(ex.ToString());
		}
		Console.ReadLine();
	}

	private static async Task testStudentStatus(AppDbContext dbContext)
	{
		var students = dbContext.Students
			.Where(s => !s.Deleted)
			.Where(s => s.StartYear == 2011)
			.ToList();

		foreach (Student s in students)
			Console.WriteLine(s.StudentName + " " + s.Status);
	}

	private static async Task HashPasswords(AppDbContext dbContext, IServiceProvider scopedProvider)
	{
		var passwordHasher = scopedProvider.GetRequiredService<IPasswordHasher<Party>>();

		// Assuming all passwords need to be hashed (ensure this is what you want)
		var users = dbContext.Parties.ToList();

		foreach (var user in users)
		{
			if (user.PasswordHash == null || user.PasswordHash.Length <= 60)
			{
				var plaintextPassword = user.PasswordHash;
				user.PasswordHash = passwordHasher.HashPassword(user, plaintextPassword);
				//AQAAAAIAAYagAAAAELprNbZzQFOVaHCaQUPM9qw9ztxrucH5AylKUOPJdwcji8y1K9SvZdTZ9aGKONwHYA==
			}
		}

		await dbContext.SaveChangesAsync();
		Console.WriteLine("Passwords have been hashed successfully.");
	}
}
