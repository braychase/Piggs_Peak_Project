using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API
{
    [Table("v_StudentSearch")]
    public class StudentSearch
    {
        [Key]
        [Column("Student_id")]
        public int StudentID { get; set; }

        [Column("Student_nm")]
        public string? StudentName { get; set; }

        [Column("First_nm")]
        public string? FirstName { get; set; }

        [Column("Last_nm")]
        public string? LastName { get; set; }

        [Column("StudentCode_tx")]
        public string? StudentCode { get; set; }

        [Column("Birth_dt")]
        public DateTime? BirthDate { get; set; }

        [Column("Gender_tx")]
        public string? Gender { get; set; }

        [Column("Sponsored_yn")]
        public string? Sponsored { get; set; }

        [Column("OVC_yn")]
        public string? OVC { get; set; }

        [Column("School_id")]
        public int? SchoolID { get; set; }

        [Column("School_nm")]
        public string? SchoolCode { get; set; }

		[Column("Age")]
		public int? Age { get; set; }

		[Column("Form_nb")]
		public int? Form { get; set; }

        [Column("Photo_id")]
        public int? PhotoId { get; set; }
        
        [Column("Photo_dt")]
        public DateTime? PhotoDate { get; set; }

		[Column("New_yn")]
		public string? NewStudent { get; set; }

		[Column("Active_yn")]
		public string? Active { get; set; }

		[Column("Priority_nb")]
		public int? Priority { get; set; }

		[Column("Selected_yn")]
		public string? Selected { get; set; }

		[Column("StartYear_nb")]
		public int? StartYear { get; set; }

		[Column("Status_id")]
		public int? StatusID { get; set; }
	}
}
