-- ASP.Net (Core) does not allow a reference to System.Drawing
-- so, it's easier to STORE the cropped version than to crop when the request is made :)
--
ALTER TABLE Student_Photo ADD CroppedPhoto_data VARBINARY(MAX) NULL
