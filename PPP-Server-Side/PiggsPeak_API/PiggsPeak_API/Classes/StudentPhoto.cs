using System;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PiggsPeak_API.Classes
{
	[Table("Student_Photo")]

	public class StudentPhoto
	{
		[Key]
		[Column("Photo_id")]
		public int PhotoId { get; set; }

		[Column("Photo_data")]
		public byte[]? PhotoData { get; set; }

		// Foreign key to Student table
		[ForeignKey("Student")]
		[Column("Student_id")]
		public int StudentId { get; set; }

		[Column("Photo_dt")]
		public DateTime PhotoDate { get; set; }

		[Column("PhotoCrop_tx")]
		public string? PhotoCropText { get; set; }

	}
}
