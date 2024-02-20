using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API
{
	[Table("Student_Sponsor")]
	public class StudentSponsor
	{
		[Key]
		[Column("Student_id")]
		public int StudentId { get; set; }

		[Column("Effective_dt")]
		public DateTime EffectiveDate { get; set; }

		[Column("Sponsor_nm")]
		public string SponsorName { get; set; }

		public StudentSponsor()
		{
		}

		public StudentSponsor(int studentId, DateTime effectiveDate, string sponsorName)
		{
			StudentId = studentId;
			EffectiveDate = effectiveDate;
			SponsorName = sponsorName;
		}
	}
}
