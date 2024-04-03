using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API
{
	[Table("Student_Status")]
	public class StudentStatus
	{
		[Key]
		[Column("Status_id")]
		public short StatusID { get; set; }

		[Column("Status_nm")]
		[Required]
		public string StatusName { get; set; }
	}
}
