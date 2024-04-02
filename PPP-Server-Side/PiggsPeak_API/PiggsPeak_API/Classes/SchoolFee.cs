using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("School_Fee")]
	public class SchoolFee
	{
		[Key]
		[Column("School_id")]
		public int SchoolId { get; set; }

		[Column("Effective_dt")]
		[Required]
		public DateTime? EffectiveDate { get; set; }

		[Column("Form_nb")]
		public int FormNumber { get; set; }

		[Column("Program_id")]
		public int ProgramId { get; set; }

		[Column("OVC_yn")]
		public bool OVC { get; set; }

		[Column("RegFee_nb")]
		public decimal RegistrationFee { get; set; }

		[Column("ExamFee_nb")]
		public decimal ExaminationFee { get; set; }
	}
}
