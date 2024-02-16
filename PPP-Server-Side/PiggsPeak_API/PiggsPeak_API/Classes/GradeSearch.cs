using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("v_StudentGradeDetails")]
	public class GradeSearch
	{
		// Marking Student_id as the primary key
		[Key]
		public int Student_id { get; set; }

		public DateTime Effective_dt { get; set; }

		public string? Result_tx { get; set; }

		public int Form_nb { get; set; }

		public int School_id { get; set; }

		public string? School_nm { get; set; }
	}
}
