namespace PiggsPeak_API
{
	public class School
	{
		public int SchoolID { get; set; }

		public string SchoolCode { get; set; }

		public string Description { get; set; }

		public School(int schoolID, string schoolCode, string description)
		{
			SchoolID = schoolID;
			SchoolCode = schoolCode;
			Description = description;
		}
	}
}
