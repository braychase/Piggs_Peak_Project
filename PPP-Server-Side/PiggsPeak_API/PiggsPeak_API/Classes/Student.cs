using Microsoft.EntityFrameworkCore.Metadata.Internal;
using PiggsPeak_API.Classes;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API
{
    public enum StudentStatus { New = 1, Active = 2, Graduated = 3, Failed = 4, Moved = 5, Pregnant = 6, Deceased = 7, Unknown = 99 };

    [Table("Student")]
	public class Student
	{
        [Key]
		[Column("Student_id")]
		public int StudentID { get; set; }

        [Column("Status_id")]
        public StudentStatus Status { get; set; }

        [Column("Student_nm")]
		public string StudentName { get; set; }

		[Column("First_nm")]
		public string? FirstName { get; set; }

		[Column("Last_nm")]
		public string? LastName { get; set; }

		[Column("Middle_nm")]
		public string? MiddleName { get; set; }

		[Column("StudentCode_tx")]
		public string StudentCode { get; set; }

		[Column("Birth_dt")]
		public DateTime? BirthDate { get; set; }

		[Column("Gender_tx")]
		public string? Gender { get; set; }

		[Column("Sponsored_yn")]
        public string? Sponsored { get; set; }

		[Column("OVC_yn")]
		public bool OVC { get; set; }

		[Column("Deleted_yn")]
        public bool Deleted { get; set; }

		[Column("Active_yn")]
        public bool Active { get; set; }

		[Column("Form_nb")]
		public int? Form { get; set; }

		//[ForeignKey("School")]
		[Column("School_id")]
		public int? SchoolID { get; set; }

		//[ForeignKey("School_id")]
		public School? School { get; set; }

		[Column("SponsorStart_dt")]
		public DateTime? SponsorStart { get; set; }

		[Column("FatherLiving_yn")]
		public string? FatherLiving { get; set; }

		[Column("FatherAtHome_yn")]
		public string? FatherAtHome { get; set; }

		[Column("FatherWorking_yn")]
		public string? FatherWorking { get; set; }

		[Column("FatherUnknown_yn")]
		public string? FatherUnknown { get; set; }

		[Column("MotherLiving_yn")]
		public string? MotherLiving { get; set; }

		[Column("MotherAtHome_yn")]
		public string? MotherAtHome { get; set; }

		[Column("MotherWorking_yn")]
		public string? MotherWorking { get; set; }

		[Column("MotherUnknown_yn")]
		public string? MotherUnknown { get; set; }

		[Column("FavouriteSubject_nm")]
		public string? FavouriteSubject { get; set; }

		[Column("Narritave_tx")]
		public string? Narritave { get; set; }

		[Column("Aspirations_tx")]
		public string? Aspirations { get; set; }

		[Column("Notes_tx")]
		public string? Notes { get; set; }

		[Column("Version_nb")]
		public int? Version { get; set; }

		[Column("Created_by")]
		public string? CreatedBy { get; set; }

		[Column("Created_dt")]
		public DateTime? CreatedDate { get; set; }

		[Column("Created_tz")]
		public string? CreatedTimeZone { get; set; }

		[Column("Modified_by")]
		public string? ModifiedBy { get; set; }

		[Column("Modified_dt")]
		public DateTime? ModifiedDate { get; set; }

		[Column("Modified_tz")]
		public string? ModifiedTimeZone { get; set; }

		[Column("YearFinished_nb")]
		public int? YearFinished { get; set; }

		[Column("Recommend_yn")]
		public string? Recommend { get; set; }

		[Column("Priority_nb")]
		public int? Priority { get; set; }

		[Column("DateEnrolled_dt")]
		public DateTime? DateEnrolled { get; set; }

		[Column("PrimarySchool_nm")]
		public string? PrimarySchool { get; set; }

		[Column("Selected_yn")]
		public bool Selected { get; set; }

		[Column("StartYear_nb")]
		public int? StartYear { get; set; }

		[Column("New_yn")]
		public bool NewStudent { get; set; }



		//public ICollection<StudentGrade> Grades;

		public Student()
		{
		}

		public Student(int studentID, string studentName, string? firstName, string? lastName, string studentCode,
			DateTime? birthDate, string? gender, string? sponsored, bool ovc, bool deleted, bool active, int? form,
			int? schoolID, School? school, DateTime? sponsorStart, string? fatherLiving, string? fatherAtHome,
			string? fatherWorking, string? fatherUnknown, string? motherLiving, string? motherAtHome, string? motherWorking,
			string? motherUnknown, string? favouriteSubject, string? narritave, string? aspirations, string? notes, int? version,
			string? createdBy, DateTime? createdDate, string? createdTimeZone, string? modifiedBy, DateTime? modifiedDate,
			string? modifiedTimeZone, string? middleName, string? recommend, int? priority, DateTime? dateEnrolled, string? primarySchool,
			int? yearFinished, bool selected, int? startYear, bool newStudent)
		{
			StudentID = studentID;
			StudentName = studentName;
			FirstName = firstName;
			LastName = lastName;
			MiddleName = middleName;
			StudentCode = studentCode;
			BirthDate = birthDate;
			Gender = gender;
			Sponsored = sponsored;
			OVC = ovc;
			Deleted = deleted;
			Active = active;
			Form = form;
			SchoolID = schoolID;
			School = school;
			SponsorStart = sponsorStart;
			FatherLiving = fatherLiving;
			FatherAtHome = fatherAtHome;
			FatherWorking = fatherWorking;
			FatherUnknown = fatherUnknown;
			MotherLiving = motherLiving;
			MotherAtHome = motherAtHome;
			MotherWorking = motherWorking;
			MotherUnknown = motherUnknown;
			FavouriteSubject = favouriteSubject;
			Narritave = narritave;
			Aspirations = aspirations;
			Notes = notes;
			Version = version;
			CreatedBy = createdBy;
			CreatedDate = createdDate;
			CreatedTimeZone = createdTimeZone;
			ModifiedBy = modifiedBy;
			ModifiedDate = modifiedDate;
			ModifiedTimeZone = modifiedTimeZone;
			Recommend = recommend;
			Priority = priority;
			DateEnrolled = dateEnrolled;
			PrimarySchool = primarySchool;
			YearFinished = yearFinished;
			NewStudent = newStudent;
			StartYear = startYear;
			Selected = selected;
		}

	}
}
