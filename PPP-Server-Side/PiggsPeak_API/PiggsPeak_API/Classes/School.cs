using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API
{
	[Table("School")]
	public class School
	{
		[Key] // Specify the primary key
		[Column("School_id")]
		public int SchoolID { get; set; }

		[Column("School_nm")]
		public string SchoolCode { get; set; }

		[Column("Description_tx")]
		public string Description { get; set; }

		public School()
		{
		}

		public School(int schoolID, string schoolCode, string description)
		{
			SchoolID = schoolID;
			SchoolCode = schoolCode;
			Description = description;
		}
	}
}
