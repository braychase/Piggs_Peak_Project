use PiggsPeakProject;

ALTER TABLE Student
ADD Recommend_yn CHAR(1) NOT NULL DEFAULT 'N',
Priority_nb INT NULL,
DateEnrolled_dt DATETIME NULL,
Middle_nm VARCHAR(64) NULL,
Selected_yn CHAR(1) NOT NULL DEFAULT 'N',
New_yn CHAR(1) NOT NULL DEFAULT 'Y',
PrimarySchool_nm VARCHAR(64) NULL;


