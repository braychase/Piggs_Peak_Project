using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("Party_Permission")]
	public class PartyPermission
	{
		[Key]
		[Column("Party_id")]
		public short PartyID { get; set; }

		[Key]
		[Column("Permission_id")]
		public short PermissionID { get; set; }

		[Column("Permit_yn")]
		public string IsPermitted { get; set; }

		[ForeignKey("PartyID")]
		public Party Party { get; set; }

		[ForeignKey("PermissionID")]
		public Permission Permission { get; set; }
	}
}
