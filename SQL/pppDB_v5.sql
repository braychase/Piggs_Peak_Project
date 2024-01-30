-- Drop the database if it exists
DROP DATABASE IF EXISTS PiggsPeakProject;

-- Create a new database
CREATE DATABASE PiggsPeakProject;

-- Use the newly created database
USE PiggsPeakProject;


-- Create the School table
CREATE TABLE School (
    School_id INT NOT NULL,
    PrimarySchool_yn VARCHAR(1) DEFAULT 'N',
    PrimaryContactUser_id INT NULL,
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
    Homestead_id INT NULL,
    Start_dt DATETIME NULL,
    First_nm VARCHAR(64) NULL,
    Middle_nm VARCHAR(64) NULL,
    Last_nm VARCHAR(64) NULL,
    Birth_dt DATETIME NULL,
    FatherLiving_yn VARCHAR(1) NULL,
	FatherAtHome_yn VARCHAR(1) NULL,
	FatherWorking_yn VARCHAR(1) NULL,
	FatherUnknown_yn VARCHAR(1) NULL,
	MotherLiving_yn VARCHAR(1) NULL,
	MotherAtHome_yn VARCHAR(1) NULL,
	MotherWorking_yn VARCHAR(1) NULL,
	MotherUnknown_yn VARCHAR(1) NULL,
    School_id INT NULL,
    YearFinished_nb INT NULL,
    AddressInSchool_nm VARCHAR(64) NULL,
    SupportInSchool_nm VARCHAR(64) NULL,
	AddressNotInSchool_nm VARCHAR(64) NULL,
    SupportNotInSchool_nm VARCHAR(64) NULL,
    DistanceFromSchool_tx VARCHAR(8) NULL,
    WalkOrBus_tx VARCHAR(4) NULL,
    BusFare_nb INT NULL,
    FavouriteSubject_nm VARCHAR(16) NULL,
    Electricity_yn VARCHAR(1) NULL,
    BuysUniform_nm VARCHAR(64) NULL,
    NumberAtHome_nb INT NULL,
    BreakfastEveryday_tx VARCHAR(16) NULL,
	SupperEveryday_tx VARCHAR(16) NULL,
    Sponsored_yn VARCHAR(1) NULL,
    SponsorStart_dt DATETIME NULL,
    Gender_tx VARCHAR(1) NOT NULL,
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
    FOREIGN KEY (Homestead_id) REFERENCES Homestead(Homestead_id)
);

-- Create the Student_Sibling table
CREATE TABLE Student_Sibling (
    Sibling_id INT NOT NULL,
    Student_id INT NOT NULL,
    PRIMARY KEY (Sibling_id),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id)
);

-- Create the Student_Photo table
CREATE TABLE Student_Photo (
    Photo_id INT NOT NULL,
    Photo_data VARBINARY(MAX) NOT NULL,
	Student_id INT NULL,
    Photo_dt DATETIME NULL,
	PhotoCrop_tx VARCHAR(20) NULL,
    PRIMARY KEY (Photo_id),
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id)
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
    StudentGrade_id INT IDENTITY(1,1) NOT NULL,
    Student_id INT NOT NULL,
    School_id INT NULL,
    Program_id INT NULL,
    Effective_dt DATETIME NOT NULL,
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
    Sponsor_nm VARCHAR(64) NOT NULL,
    Effective_dt DATETIME NOT NULL,
    PRIMARY KEY (Student_id, Effective_dt),
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id) ON DELETE CASCADE
);



-- Create the School_Fee table
CREATE TABLE School_Fee (
    School_id INT NOT NULL,
    Effective_dt DATETIME NULL,
    Form_nb INT NOT NULL,
    Program_id INT NOT NULL,
    OVC_yn VARCHAR(1) NOT NULL,
    RegFee_nb DECIMAL(10, 2) NOT NULL,
    ExamFee_nb DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (OVC_yn, School_id, Form_nb, Program_id),
    FOREIGN KEY (School_id) REFERENCES School(School_id),
    FOREIGN KEY (Program_id) REFERENCES Program(Program_id)
);


-- Create the School_Note table
CREATE TABLE School_Note (
    SchoolNote_id INT NOT NULL,
    School_id INT NOT NULL,
    Description_tx VARCHAR(1024) NULL,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    PRIMARY KEY (SchoolNote_id),
    FOREIGN KEY (School_id) REFERENCES School(School_id)
);

-- Create the Homestead_Note table
CREATE TABLE Homestead_Note (
    HomesteadNote_id INT NOT NULL,
    Homestead_id INT NOT NULL,
    Description_tx VARCHAR(1024) NULL,
    Created_by VARCHAR(12) NULL,
    Created_dt DATETIME NULL,
    PRIMARY KEY (HomesteadNote_id),
    FOREIGN KEY (Homestead_id) REFERENCES Homestead(Homestead_id)
);

CREATE TABLE Student_Doc (
	Doc_id	int NOT NULL,
    Student_id INT NULL,
    Doc VARBINARY(MAX) NULL,
	PRIMARY KEY (Doc_id),
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id)
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

CREATE TABLE Party (
    Party_id smallint NOT NULL PRIMARY KEY,
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

CREATE TABLE Permission (
    Permission_id smallint NOT NULL PRIMARY KEY,
    Permission_nm varchar(20) NOT NULL,
    Description_tx varchar(60) NULL,
    Permit_yn char(1) NOT NULL
);

CREATE TABLE Party_Permission (
    Party_id smallint NOT NULL,
    Permission_id smallint NOT NULL,
    Permit_yn char(1) NOT NULL,
    PRIMARY KEY (Party_id, Permission_id),
    FOREIGN KEY (Party_id) REFERENCES Party(Party_id),
    FOREIGN KEY (Permission_id) REFERENCES Permission(Permission_id)
);

INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (1, 'Pref', 'Preferences', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (2, 'Pref.User', 'User Preferences', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (3, 'Pref.Password', 'User Password Change', 'Y');

INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (10, 'U', 'User', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (11, 'U.Add', 'Add User', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (12, 'U.Edit', 'Edit User', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (13, 'U.Del', 'Delete User', 'Y');

INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (20, 'UG', 'User Group', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (21, 'UG.Add', 'Add User Group', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (22, 'UG.Edit', 'Edit User Group', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (23, 'UG.Del', 'Delete User Group', 'Y');

INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (104, 'St', 'Student', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (105, 'St.Add', 'Add Student', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (106, 'St.Edit', 'Edit Student', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (107, 'St.Del', 'Delete Student', 'Y');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (1, 'FHS', 'Fundukuwela High School'); 
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (2, 'PCH', 'Peak Central High School'); 
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (3, 'EHS', 'Enkhaba High School');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (4, 'EKU', 'Ekuvimjelweni High School');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (5, 'LON', 'Londunduma');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (6, 'MBE', 'Mbeka');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (7, 'SIP', 'Siphocosini');
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (1, '*', 'Default'); 
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (2, 'Ag', 'Agriculture'); 
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (3, 'DT', 'Design & Tech'); 
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (4, 'HE', 'Home Economics'); 
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',1,1,'N',5060,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',2,1,'N',4270,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',3,1,'N',4570,1364);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',4,1,'N',6290,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',5,1,'N',5830,3354);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',1,1,'Y',3110,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',2,1,'Y',2320,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',3,1,'Y',2620,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',4,1,'Y',3790,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',5,1,'Y',3880,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',1,3,'N',5725,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,3,'N',4685,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,3,'N',4505,1402);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,3,'N',5135,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,3,'N',5115,4020);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',1,3,'Y',3775,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,3,'Y',2735,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,3,'Y',2555,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,3,'Y',2635,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,3,'Y',3165,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',1,4,'N',5675,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,4,'N',4735,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,4,'N',4655,1402);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,4,'N',6155,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,4,'N',5135,4020);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,4,'Y',2785,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,4,'Y',2705,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,4,'Y',3655,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,4,'Y',3185,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,2,'N',4670,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,2,'N',4270,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,2,'N',5100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,2,'N',4200,3684);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,2,'Y',2600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,2,'Y',2200,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,3,'N',4720,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,3,'N',4320,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,3,'N',4070,1578);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,3,'N',5100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,3,'N',4250,3684);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,3,'Y',2370,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,3,'Y',2120,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,3,'Y',2600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,3,'Y',2250,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,4,'N',4720,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,4,'N',4320,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,4,'N',4070,1578);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,4,'N',5100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,4,'N',4250,3684);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,4,'Y',2770,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,4,'Y',2370,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,4,'Y',2120,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,4,'Y',2600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',1,1,'N',4050,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',2,1,'N',3550,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',3,1,'N',3700,2180);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',4,1,'N',4000,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',1,1,'Y',2100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',2,1,'Y',1600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',3,1,'Y',1750,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',4,1,'Y',1500,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',5,1,'Y',1850,0);
