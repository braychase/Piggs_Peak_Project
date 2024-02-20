DROP VIEW v_StudentGradeDetails 
go

CREATE VIEW v_StudentGradeDetails AS
SELECT
    sg.Student_id,
    sg.Effective_dt,
    sg.Result_tx,
    sg.Form_nb,
    sg.School_id,
    s.School_nm
FROM
    Student_Grade sg
JOIN
    School s ON sg.School_id = s.School_id;
