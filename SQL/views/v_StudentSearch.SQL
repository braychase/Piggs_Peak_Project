DROP VIEW v_StudentSearch;
go

CREATE VIEW v_StudentSearch AS
SELECT S.Student_id, S.StudentCode_tx,
	S.Student_nm, S.First_nm, S.Last_nm, 
	S.Birth_dt, DATEDIFF(YY, S.Birth_dt, GETDATE()) AS Age,
	S.Gender_tx, S.Sponsored_yn, S.OVC_yn, 
	S.School_id, Sc.School_nm, S.Form_nb,
	P.Photo_id, P.Photo_dt
FROM Student S
	LEFT JOIN School Sc ON (S.School_id = Sc.School_id)
	LEFT OUTER JOIN Student_Photo P
    ON (S.Student_id = P.Student_id AND
        P.Photo_dt = (SELECT MAX(Photo_dt) FROM Student_Photo P2 WHERE S.Student_id = P2.Student_id))
WHERE S.Deleted_yn='N' AND S.Active_yn='Y'

-- select * from v_StudentSearch