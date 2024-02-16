using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("Program")]
	public class SchoolProgram
	{
		[Key]
		[Column("Program_id")]
		public int ProgramID { get; set; }

		[Column("Program_nm")]
		public string? ProgramName { get; set; }

		[Column("Description_tx")]
		public string? Description { get; set; }

		public SchoolProgram() { }

		public SchoolProgram(int programID, string? programName, string? description)
		{
			ProgramID = programID;
			ProgramName = programName;
			Description = description;
		}
	}
}

