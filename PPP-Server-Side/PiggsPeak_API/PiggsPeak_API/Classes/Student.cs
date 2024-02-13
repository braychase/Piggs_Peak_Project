using PiggsPeak_API.Classes;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API
{
	[Table("Student")]
	public class Student
	{
		[Key]
		[Column("Student_id")]
		public int StudentID { get; set; }

		[Column("Student_nm")]
		public string StudentName { get; set; }

		[Column("First_nm")]
		public string FirstName { get; set; }

		[Column("Last_nm")]
		public string LastName { get; set; }

		[Column("StudentCode_tx")]
		public string StudentCode { get; set; }

		[Column("Birth_dt")]
		public DateTime? BirthDate { get; set; }

		[Column("Gender_tx")]
		public string Gender { get; set; }

		[Column("Sponsored_yn")]
		public string Sponsored { get; set; }

		[Column("OVC_yn")]
		public string OVC { get; set; }

		[Column("deleted_yn")]
		public string Deleted { get; set; }
			
		[Column("active_yn")]
		public string Active { get; set; }

		//[ForeignKey("School")]
		[Column("School_id")]
		public int SchoolID { get; set; }

		//[ForeignKey("School_id")]
        public School School { get; set; }

        //public ICollection<StudentGrade> Grades;

		public Student()
		{
		}

		public Student(int studentID, string studentName, string firstName, string lastName, string studentCode,
			DateTime birthDate, string gender, string sponsored, string ovc, string deleted, string active)
		{
			StudentID = studentID;
			StudentName = studentName;
			FirstName = firstName;
			LastName = lastName;
			StudentCode = studentCode;
			BirthDate = birthDate;
			Gender = gender;
			Sponsored = sponsored;
			OVC = ovc;
			Deleted = deleted;
			Active = active;
		}
	}
}
