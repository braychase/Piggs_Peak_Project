using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("Permission")]
	public class Permission
	{
		[Key]
		[Column("Permission_id")]
		public short PermissionID { get; set; }

		[Column("Permission_nm")]
		[Required]
		public string PermissionName { get; set; }

		[Column("Description_tx")]
		public string Description { get; set; }

		[Column("Permit_yn")]
		[Required]
		public char IsPermitted { get; set; }
	}
}
