using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("Student_Grade")]
	public class StudentGrade
	{
		[Key]
		[Column("StudentGrade_id")]
		public int StudentGradeID { get; set; }

		[Column("Student_id")]
		public int StudentID { get; set; }

		[Column("Effective_dt")]
		public DateTime EffectiveDate { get; set; }

		[Column("School_id")]
		public int SchoolID { get; set; }
	}
}
