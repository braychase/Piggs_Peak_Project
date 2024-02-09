namespace PiggsPeak_API
{
	public class StudentReduced
	{
		public int StudentID { get; set; }
		public string StudentName { get; set; }
		public string Gender { get; set; }
		public int? SchoolID { get; set; }
		public string SchoolName { get; set; } // Added for convenience to include related School name
	}
}
