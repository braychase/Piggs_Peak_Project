ALTER TABLE Student
	ADD StartYear_nb INT NULL,
		Recommend_yn CHAR(1) NOT NULL DEFAULT 'N',
		Priority_nb INT NULL,
		DateEnrolled_dt DATETIME NULL,
		Middle_nm VARCHAR(64) NULL,
		Selected_yn CHAR(1) NOT NULL DEFAULT 'N',
		New_yn CHAR(1) NOT NULL DEFAULT 'Y',
		PrimarySchool_nm VARCHAR(64) NULL,
		YearFinished_nb INT NULL
	;
go

-- compute the StartYear field
update Student set StartYear_nb = Convert(int, substring(studentCode_tx,5,4))

-- move LON students from 2024 to 2023
UPDATE STUDENT 
SET StudentCode_tx='LON-2023-' + substring(studentCode_tx,10,2), 
	StartYear_nb=2023
WHERE substring(studentCode_tx,1,8)='LON-2024'

-- convert 2017 students to 'new students' for 2024
UPDATE student 
SET StudentCode_tx=substring(studentCode_tx,1,3) + '-2024-' + substring(studentCode_tx,10,2),
	StartYear_nb=2024, 
	Active_yn='N', New_yn='Y', 
	Selected_yn=iif(student_id % 2=0,'Y','N')
WHERE StartYear_nb=2017
