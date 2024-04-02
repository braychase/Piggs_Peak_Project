using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("Party")]
	public class Party
	{
		[Key]
		[Column("Party_id")]
		public short PartyID { get; set; }

		[Column("Party_nm")]
		[Required]
		public string PartyName { get; set; }

		[Column("Login_id")]
		public string? LoginID { get; set; }

		[Column("Password_Hash_tx")]
		public string? PasswordHash { get; set; }

		[Column("Group_yn")]
		[Required]
		public bool IsGroup { get; set; }

		[Column("Password_Change_dt")]
		public DateTime? PasswordChangeDate { get; set; }

		[Column("Admin_yn")]
		[Required]
		public bool IsAdmin { get; set; }

		[Column("Failed_Login_nb")]
		public byte? FailedLoginCount { get; set; }

		[Column("Last_Login_dt")]
		public DateTime? LastLoginDate { get; set; }

		[Column("Disabled_yn")]
		[Required]
		public bool IsDisabled { get; set; }

		[Column("Failed_Login_dt")]
		public DateTime? FailedLoginDate { get; set; }

		[Column("Deleted_yn")]
		[Required]
		public bool IsDeleted { get; set; }

		[Column("Created_by")]
		public string? CreatedBy { get; set; }

		[Column("Created_dt")]
		public DateTime? CreatedDate { get; set; }

		[Column("Modified_by")]
		public string? ModifiedBy { get; set; }

		[Column("Created_tz")]
		public string? CreatedTimeZone { get; set; }

		[Column("Modified_dt")]
		public DateTime? ModifiedDate { get; set; }

		[Column("Modified_tz")]
		public string? ModifiedTimeZone { get; set; }

		[Column("DefaultSchool_id")]
		public int? DefaultSchool { get; set; }
	}
}
