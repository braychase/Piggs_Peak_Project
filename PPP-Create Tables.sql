-- Drop the database if it exists
DROP DATABASE IF EXISTS PPP_Test;

-- Create a new database
CREATE DATABASE PPP_Test;

-- Use the newly created database
USE PPP_Test;

-- Create the School table
CREATE TABLE School (
    School_id INT NOT NULL,
    School_nm VARCHAR(3) NOT NULL,
    Description_tx VARCHAR(64) NOT NULL,
    PrimarySchool_yn VARCHAR(1) DEFAULT 'N',
    PrimaryContactUser_id INT NULL,
    Deleted_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    Created_tz VARCHAR(6) NULL,
    Modified_by VARCHAR(12) NULL,
    Modified_dt DATETIME NULL,
    Modified_tz VARCHAR(6) NULL,
    PRIMARY KEY (School_id)
);

-- Create the Homestead table
CREATE TABLE Homestead (
    Homestead_id INT NOT NULL,
    Homestead_nm VARCHAR(50) NOT NULL,
    Location_tx VARCHAR(100) NULL,
    Description_tx VARCHAR(255) NULL,
    PrimaryCareGiver_nm VARCHAR(64) NULL,
    PrimaryCareGiverPhone_tx VARCHAR(10) NULL,
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
    First_nm VARCHAR(64) NULL,
    Last_nm VARCHAR(64) NULL,
    Birth_dt DATETIME NULL,
    Gender_tx VARCHAR(1) NOT NULL,
    OVC_yn VARCHAR(1) NOT NULL DEFAULT 'N',
    Sponsored_yn VARCHAR(1) NULL,
    SponsorStart_dt DATETIME NULL,
    Homestead_id INT NULL,
    FatherLiving_yn VARCHAR(1) NULL,
	FatherAtHome_yn VARCHAR(1) NULL,
	FatherWorking_yn VARCHAR(1) NULL,
	FatherUnknown_yn VARCHAR(1) NULL,
	MotherLiving_yn VARCHAR(1) NULL,
	MotherAtHome_yn VARCHAR(1) NULL,
	MotherWorking_yn VARCHAR(1) NULL,
	MotherUnknown_yn VARCHAR(1) NULL,
    AddressInSchool_nm VARCHAR(64) NULL,
    SupportInSchool_nm VARCHAR(64) NULL,
	AddressNotInSchool_nm VARCHAR(64) NULL,
    SupportNotInSchool_nm VARCHAR(64) NULL,
    DistanceFromSchool_tx VARCHAR(8) NULL,
    WalkOrBus_tx VARCHAR(4) NULL,
    BusFare_nb INT NULL,
    FavouriteSubject_nm VARCHAR(64) NULL,
    Electricity_yn VARCHAR(1) NULL,
    BuysUniform_nm VARCHAR(64) NULL,
    NumberAtHome_nb INT NULL,
    BreakfastEveryday_tx VARCHAR(16) NULL,
	SupperEveryday_tx VARCHAR(16) NULL,
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
    FOREIGN KEY (Homestead_id) REFERENCES Homestead(Homestead_id)
);

-- Create the Student_Sibling table
CREATE TABLE Student_Sibling (
    Sibling_id INT NOT NULL,
    Student_id INT NOT NULL,
    PRIMARY KEY (Sibling_id),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE
);

-- Create the Student_Photo table
CREATE TABLE Student_Photo (
    Photo_id INT NOT NULL,
    Student_id INT NULL,
    Photo_data LONGBLOB NOT NULL,
	Photo_dt DATETIME NULL,
	PhotoCrop_tx VARCHAR(20) NULL,
    PRIMARY KEY (Photo_id),
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE
);

-- Create the Program table
CREATE TABLE Program (
    Program_id INT NOT NULL,
    Program_nm VARCHAR(4) NOT NULL,
    Description_tx VARCHAR(255) NULL,
    PRIMARY KEY (Program_id)
);

-- Create the Student_Grade table
CREATE TABLE Student_Grade (
    StudentGrade_id INT NOT NULL,
    Student_id INT NOT NULL,
    Effective_dt DATETIME NOT NULL,
    School_id INT NULL,
    Program_id INT NOT NULL,
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
    PRIMARY KEY (StudentGrade_id),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE,
    FOREIGN KEY (Program_id) REFERENCES Program(Program_id),
	FOREIGN KEY (School_id) REFERENCES School(School_id)
);


-- Create the Student_Sponsor table
CREATE TABLE Student_Sponsor (
    Student_id INT NOT NULL,
    Effective_dt DATETIME NOT NULL,
    Sponsor_nm VARCHAR(64) NOT NULL,
    PRIMARY KEY (Student_id, Effective_dt),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE
);


-- Create the School_Fee table
CREATE TABLE School_Fee (
    School_id INT NOT NULL,
    Effective_dt DATETIME NOT NULL,
    Form_nb INT NOT NULL,
    Program_id INT NOT NULL,
    OVC_yn VARCHAR(1) NOT NULL,
    RegFee_nb DECIMAL(10, 2) NOT NULL,
    ExamFee_nb DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (School_id, Effective_dt, OVC_yn, Form_nb, Program_id),
    FOREIGN KEY (School_id) REFERENCES School(School_id) ON DELETE CASCADE,
    FOREIGN KEY (Program_id) REFERENCES Program(Program_id) ON DELETE CASCADE
);


-- Create the School_Note table
CREATE TABLE School_Note (
    SchoolNote_id INT NOT NULL,
    School_id INT NOT NULL,
    Description_tx VARCHAR(1024) NULL,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    PRIMARY KEY (SchoolNote_id),
    FOREIGN KEY (School_id) REFERENCES School(School_id) ON DELETE CASCADE
);

-- Create the Homestead_Note table
CREATE TABLE Homestead_Note (
    HomesteadNote_id INT NOT NULL,
    Homestead_id INT NOT NULL,
    Description_tx VARCHAR(1024) NULL,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    PRIMARY KEY (HomesteadNote_id),
    FOREIGN KEY (Homestead_id) REFERENCES Homestead(Homestead_id) ON DELETE CASCADE
);

CREATE TABLE Student_Doc (
	Doc_id	int NOT NULL,
    Student_id INT NULL,
    Doc LONGBLOB NULL,
	PRIMARY KEY (Doc_id),
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE
);

-- Create the Student_Note table
CREATE TABLE Student_Note (
    StudentNote_id INT NOT NULL,
    Student_id INT NOT NULL,
    Description_tx VARCHAR(1024) NULL,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    PRIMARY KEY (StudentNote_id),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE
);

CREATE TABLE Party(
	Party_id smallint NOT NULL,
	Party_nm varchar(60) NOT NULL,
	Login_id varchar(12) NULL,
	Password_Hash_tx varchar(255) NULL,
	Group_yn char(1) NOT NULL,
	Password_Change_dt datetime NULL,
	Admin_yn char(1) NOT NULL,
	Failed_Login_nb tinyint NULL,
	Last_Login_dt datetime NULL,
	Disabled_yn char(1) NOT NULL,
	Failed_Login_dt datetime NULL,
	Deleted_yn char(1) NOT NULL,
	Created_by varchar(20) NULL,
	Created_dt datetime NULL,
	Modified_by varchar(20) NULL,
	Created_tz varchar(6) NULL,
	Modified_dt datetime NULL,
	Modified_tz varchar(6) NULL
	);

CREATE TABLE Permission(
	Permission_id smallint NOT NULL,
	Permission_nm varchar(20) NOT NULL,
	Description_tx varchar(60) NULL,
	Permit_yn char(1) NOT NULL
	);

CREATE TABLE Party_Permission(
	Party_id smallint NOT NULL,
	Permission_id smallint NOT NULL,
	Permit_yn char(1) NOT NULL
	);
