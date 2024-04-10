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
		public int SchoolID { get; set; }

		[Key]
		[Column("Program_id")]
		public int ProgramID { get; set; }

		[Key]
		[Column("Form_nb")]
		public int FormNumber { get; set; }

		[Key]
		[Column("OVC_yn")]
		public bool OVC { get; set; }

		[Column("Effective_dt")]
		//		[Required]
		public DateTime? EffectiveDate { get; set; }

		[Column("RegFee_nb")]
		public decimal RegistrationFee { get; set; }

		[Column("ExamFee_nb")]
		public decimal ExaminationFee { get; set; }

		//public decimal TotalFees
		//{ get { return RegistrationFee + ExaminationFee; } }
    }
}
