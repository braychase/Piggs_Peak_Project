-- Drop the database if it exists
DROP DATABASE IF EXISTS PiggsPeakProject;

-- Create a new database
CREATE DATABASE PiggsPeakProject;

-- Use the newly created database
USE PiggsPeakProject;

-- Create the Gender table
CREATE TABLE Gender (
    Gender_tx VARCHAR(1) NOT NULL,
    Gender_nm VARCHAR(6) NOT NULL,
    PRIMARY KEY (Gender_tx)
);

-- Create the School table
CREATE TABLE School (
    School_id INT NOT NULL,
    School_nm VARCHAR(3) NOT NULL,
    Description_tx VARCHAR(64) NOT NULL,
    Deleted_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    Created_tz VARCHAR(6) NULL,
    Modified_by VARCHAR(12) NULL,
    Modified_dt DATETIME NULL,
    Modified_tz VARCHAR(6) NULL,
    PRIMARY KEY (School_id)
);

-- Insert data into the School table
INSERT INTO School (School_id, School_nm, Description_tx)
VALUES
    (1, 'FHS', 'Fundukuwela High School'),
    (2, 'PCH', 'Peak Central High School'),
    (3, 'EHS', 'Enkhaba High School'),
    (4, 'EUK', 'Ekuvimjelweni High School');

-- Create the Homestead table
CREATE TABLE Homestead (
    Homestead_id INT NOT NULL,
    Homestead_name VARCHAR(50) NOT NULL,
    Location_tx VARCHAR(100) NULL,
    Description_tx VARCHAR(255) NULL,
    Active_yn VARCHAR(1) NOT NULL DEFAULT 'Y',
    Deleted_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    Created_tz VARCHAR(6) NULL,
    Modified_by VARCHAR(12) NULL,
    Modified_dt DATETIME NULL,
    Modified_tz VARCHAR(6) NULL,
    PRIMARY KEY (Homestead_id)
);

-- Create the Student table
CREATE TABLE Student (
    Student_id INT NOT NULL,
    Student_nm VARCHAR(64) NOT NULL,
    StudentCode_tx VARCHAR(12) NOT NULL,
    School_id INT NOT NULL,
    Homestead_id INT NULL,
    Start_dt DATETIME NOT NULL,
    First_nm VARCHAR(64) NULL,
    Last_nm VARCHAR(64) NULL,
    Birth_dt DATETIME NULL,
    Gender_tx VARCHAR(1) NOT NULL,
    InfoSheet_yn VARCHAR(1) NOT NULL,
    Phone1_nb DECIMAL(10) NULL,
    Phone1_tx VARCHAR(10) NULL,
    Phone2_nb DECIMAL(10) NULL,
    Phone2_tx VARCHAR(10) NULL,
    Email1_tx VARCHAR(64) NULL,
    OVC_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Narritave_tx VARCHAR(1024) NULL,
    Aspirations_tx VARCHAR(1024) NULL,
    Notes_tx VARCHAR(1024) NULL,
    Active_yn VARCHAR(1) NOT NULL DEFAULT 'Y',
    Deleted_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Version_nb INT NOT NULL DEFAULT 1,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    Created_tz VARCHAR(6) NULL,
    Modified_by VARCHAR(12) NULL,
    Modified_dt DATETIME NULL,
    Modified_tz VARCHAR(6) NULL,
    PRIMARY KEY (Student_id),
    FOREIGN KEY (School_id) REFERENCES School(School_id),
    FOREIGN KEY (Gender_tx) REFERENCES Gender(Gender_tx),
    FOREIGN KEY (Homestead_id) REFERENCES Homestead(Homestead_id)
);

-- Create the Student_Photo table
CREATE TABLE Student_Photo (
    Photo_id INT NOT NULL,
    Photo_data LONGBLOB NOT NULL,
	Student_id INT NULL,
    Photo_Date DATETIME NULL,
	PhotoCrop_tx VARCHAR(20) NULL,
    PRIMARY KEY (Photo_id),
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id)
);

-- Create the School_Program table
CREATE TABLE School_Program (
    Program_id INT NOT NULL,
    Program_nm VARCHAR(50) NOT NULL,
    Program_Description VARCHAR(255) NULL,
    PRIMARY KEY (Program_id)
);

-- Create the GradeLevel table
CREATE TABLE GradeLevel (
    GradeLevel_id INT NOT NULL,
	GradeLevel VARCHAR(16) NULL,
    PRIMARY KEY (GradeLevel_id)
);

-- Create the Student_Grade table
CREATE TABLE Student_Grade (
    Student_Grade_id INT NOT NULL,
    Student_id INT NOT NULL,
    GradeLevel_id INT NOT NULL,
    Program_id INT NOT NULL,
    Effective_dt DATETIME NOT NULL,
    Form_nb INT NOT NULL,
    Result_tx VARCHAR(10) NULL,
    Notes_tx VARCHAR(1024) NULL,
    Deleted_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Version_nb INT NOT NULL DEFAULT 1,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    Created_tz VARCHAR(6) NULL,
    Modified_by VARCHAR(12) NULL,
    Modified_dt DATETIME NULL,
    Modified_tz VARCHAR(6) NULL,
    PRIMARY KEY (Student_Grade_id),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE,
    FOREIGN KEY (GradeLevel_id) REFERENCES GradeLevel(GradeLevel_id),
    FOREIGN KEY (Program_id) REFERENCES School_Program(Program_id)
);


-- Create the Student_Sponsor table
CREATE TABLE Student_Sponsor (
    Sponsor_id INT NOT NULL,
    Sponsor_nm VARCHAR(64) NOT NULL,
    Start_dt DATETIME NOT NULL,
    SponsorCode_tx VARCHAR(12) NOT NULL,
    First_nm VARCHAR(64) NULL,
    Last_nm VARCHAR(64) NULL,
    Address1_tx VARCHAR(40) NULL,
    Address2_tx VARCHAR(40) NULL,
    City_tx VARCHAR(40) NULL,
    Province_tx VARCHAR(2) NULL,
    PostalCode_tx VARCHAR(10) NULL,
    Phone1_nb DECIMAL(10) NULL,
    Phone1_tx VARCHAR(10) NULL,
    Phone2_nb DECIMAL(10) NULL,
    Phone2_tx VARCHAR(10) NULL,
    EMail1_tx VARCHAR(64) NULL,
    EMail2_tx VARCHAR(64) NULL,
    Notes_tx VARCHAR(1024) NULL,
    Active_yn VARCHAR(1) NOT NULL DEFAULT 'Y',
    Deleted_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Version_nb INT NOT NULL DEFAULT 1,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    Created_tz VARCHAR(6) NULL,
    Modified_by VARCHAR(12) NULL,
    Modified_dt DATETIME NULL,
    Modified_tz VARCHAR(6) NULL,
    PRIMARY KEY (Sponsor_id)
);


-- Create the School_Fees table
CREATE TABLE School_Fees (
    Fee_id INT NOT NULL,
    School_id INT NOT NULL,
    Grade_id INT NOT NULL,
    Program_id INT NOT NULL,
    Fee_amount DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (Fee_id),
    FOREIGN KEY (School_id) REFERENCES School(School_id),
    FOREIGN KEY (Grade_id) REFERENCES GradeLevel(GradeLevel_id),
    FOREIGN KEY (Program_id) REFERENCES School_Program(Program_id)
);

CREATE TABLE School_Note (
	SchoolNote_id	int NOT NULL,
    SchoolNote_Description VARCHAR(1024) NULL
);

CREATE TABLE Student_Doc (
	Doc_id	int NOT NULL
);

CREATE TABLE Student_Note (
	StudentNote_id	int NOT NULL,
	StudentNote_Description VARCHAR(1024) NULL
);