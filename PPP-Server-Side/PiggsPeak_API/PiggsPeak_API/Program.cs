using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using PiggsPeak_API;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;
using PiggsPeak_API.Classes;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Serilog;
using Serilog.Events;

var builder = WebApplication.CreateBuilder(args);

// Initialize Serilog
Log.Logger = new LoggerConfiguration()
	.MinimumLevel.Debug()
	.MinimumLevel.Override("Microsoft", LogEventLevel.Information)
	.Enrich.FromLogContext()
	.WriteTo.Console()
	.WriteTo.File("Logs/log-.txt", rollingInterval: RollingInterval.Day)
	.CreateLogger();

builder.Host.UseSerilog();

// Add services to the container.
builder.Services.AddControllers();

// Add authentication services
builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
	.AddCookie(options =>
	{
		options.LoginPath = "/api/Login";
		options.Cookie.SameSite = SameSiteMode.None;
	});
builder.Services.AddScoped<IPasswordHasher<Party>, PasswordHasher<Party>>();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<AppDbContext>(options =>
{
	string s = "DefaultConnection";
	if (Environment.MachineName == "BRAYDENSPC")
		s = "DefaultConnection-Brayden";
	else if (Environment.MachineName == "gordonCole")
        s = "DefaultConnection-ChrisC";
    else if (Environment.MachineName == "SJ-CRENDEL-ZBG8")
        s = "DefaultConnection-ChrisR";
    else if (Environment.MachineName == "SAMSERVER3")
        s = "DefaultConnection-SAM";
   
    options.UseSqlServer(builder.Configuration.GetConnectionString(s));
});


// Configure CORS globally
builder.Services.AddCors(options =>
{
	options.AddPolicy("AllowReactNative",
		builder => builder
			.WithOrigins("http://localhost:19006")
			.AllowAnyHeader()
			.AllowAnyMethod()
			.AllowCredentials());
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
	app.UseSwagger();
	app.UseSwaggerUI();
}

app.UseHttpsRedirection();

// Enable CORS globally
app.UseCors("AllowReactNative");

// Authentication & Authorization middleware
//app.UseAuthentication();
//app.UseAuthorization();

app.MapControllers();

app.Run();
