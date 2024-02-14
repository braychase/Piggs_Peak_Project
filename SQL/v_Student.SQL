DROP VIEW v_StudentSearch;

CREATE VIEW v_StudentSearch AS
SELECT S.Student_id, S.StudentCode_tx,
	S.Student_nm, S.First_nm, S.Last_nm, 
	S.Birth_dt, -- AGE?
	S.Gender_tx, S.Sponsored_yn, S.OVC_yn, 
	S.School_id, Sc.School_nm, S.Form_nb
FROM Student S
LEFT JOIN School Sc ON (S.School_id = Sc.School_id)
WHERE Deleted_yn='N' AND S.Active_yn='Y'

