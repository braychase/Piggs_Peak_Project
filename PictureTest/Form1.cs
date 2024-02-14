using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PictureTest
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        string sConnectionString = "Server=.\\MIXED;Database=PiggsPeakProject;User ID=PPP_User;Password=PPP_Password;TrustServerCertificate=True;MultipleActiveResultSets=true";


        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(sConnectionString);
                SqlCommand cmd = new SqlCommand("SELECT Photo_data, PhotoCrop_tx FROM Student_Photo WHERE Photo_id=10", conn);
                conn.Open();

                string sPhotoCrop = "";
                using (var reader = cmd.ExecuteReader())
                    if (reader.Read())
                    {
                        // again, we map the result to an SqlBytes instance
                        System.Data.SqlTypes.SqlBytes bytes = reader.GetSqlBytes(0);
                        sPhotoCrop = reader.GetString(1);

                        MemoryStream memoryStream = new MemoryStream(bytes.Buffer);
                        pictureBox1.Image = Image.FromStream(memoryStream);
                    }

                pictureBox2.Image = CropImage(pictureBox1.Image, sPhotoCrop);
            }
            catch (Exception ex)
            {
                ;
            }
        }

        private static Rectangle ParseCropString(string sCrop, Size size)
        {
            // string is the number of pixels to remove from each of the 4 edges
            // (ie. 0,0,0,0 = no cropping)
            //

            // NOTE: This code is a modified version of a routine which was MUCH MORE ROBUST
            // Additinal work is needed to make it NOT blow up on bad input data

            string[] parts = sCrop.Split(',');
            int iTop = Int16.Parse(parts[0].Trim());
            int iBottom = Int16.Parse(parts[1].Trim());
            int iLeft = Int16.Parse(parts[2].Trim());
            int iRight = Int16.Parse(parts[3].Trim());

            iBottom = Math.Max(0, size.Height - iBottom);
            iRight = Math.Max(0, size.Width - iRight);

            return new Rectangle(iLeft, iTop, iRight - iLeft, iBottom - iTop);
        }

        public static Image CropImage(Image image, string sCrop)
        {
            Rectangle r = ParseCropString(sCrop, image.Size);
            if ((Math.Abs(r.Left) <= 2) && (Math.Abs(r.Top) <= 2))
                if (Math.Abs(r.Width - image.Size.Width) <= 2)
                    if (Math.Abs(r.Height - image.Size.Height) <= 2)
                        return image;

            Bitmap newImage = new Bitmap(r.Width, r.Height, System.Drawing.Imaging.PixelFormat.Format48bppRgb);
            using (Graphics g = Graphics.FromImage(newImage))
                g.DrawImage(image,
                    new Rectangle(0, 0, r.Width, r.Height),
                    r, GraphicsUnit.Pixel);
            return newImage;
        }


        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }
    }
}
