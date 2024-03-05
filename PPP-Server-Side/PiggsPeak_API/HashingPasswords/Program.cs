using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using PiggsPeak_API.Classes;
using PiggsPeak_API;
using System;
using System.Linq;

class Program
{
	static void Main(string[] args)
	{
		// Setup DI
		var services = new ServiceCollection();
		services.AddDbContext<AppDbContext>(options =>
			options.UseSqlServer("Server=BRAYDENSPC\\SQLEXPRESS;Database=PiggsPeakProject;User ID=PPP_User;Password=PPP_Password;TrustServerCertificate=True;MultipleActiveResultSets=true")); // Replace with your actual connection string
		services.AddScoped<IPasswordHasher<Party>, PasswordHasher<Party>>();

		var serviceProvider = services.BuildServiceProvider();

		// Hash passwords
		HashPasswords(serviceProvider).Wait(); // Making the call asynchronous
	}

	private static async Task HashPasswords(IServiceProvider serviceProvider)
	{
		using (var scope = serviceProvider.CreateScope())
		{
			var scopedProvider = scope.ServiceProvider;
			var dbContext = scopedProvider.GetRequiredService<AppDbContext>();
			var passwordHasher = scopedProvider.GetRequiredService<IPasswordHasher<Party>>();

			// Assuming all passwords need to be hashed (ensure this is what you want)
			var users = dbContext.Parties.ToList();

			foreach (var user in users)
			{
				// Assuming user.PasswordHash currently contains the plaintext password
				// It's crucial to verify this assumption to avoid double-hashing or other issues
				var plaintextPassword = user.PasswordHash; // Assuming this is the plaintext password
				user.PasswordHash = passwordHasher.HashPassword(user, plaintextPassword);

				// If you had a separate field for plaintext passwords, clear it here
				// e.g., user.PlaintextPassword = null;
			}

			await dbContext.SaveChangesAsync();
			Console.WriteLine("Passwords have been hashed successfully.");
		}
	}
}
