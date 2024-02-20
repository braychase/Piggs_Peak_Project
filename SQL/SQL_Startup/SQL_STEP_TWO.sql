CREATE VIEW v_StudentSearch AS
SELECT 
    S.Student_id, 
    S.StudentCode_tx,
    S.Student_nm, 
    S.First_nm, 
    S.Last_nm, 
    S.Birth_dt,
    -- Calculated field for age
    YEAR(GETDATE()) - YEAR(S.Birth_dt) - CASE 
        WHEN MONTH(S.Birth_dt) > MONTH(GETDATE()) OR 
            (MONTH(S.Birth_dt) = MONTH(GETDATE()) AND DAY(S.Birth_dt) > DAY(GETDATE())) 
        THEN 1 
        ELSE 0 
    END AS Age,
    S.Gender_tx, 
    S.Sponsored_yn, 
    S.OVC_yn, 
    S.School_id, 
    Sc.School_nm, 
    S.Form_nb
FROM 
    Student S
LEFT JOIN 
    School Sc ON (S.School_id = Sc.School_id)
WHERE 
    S.Deleted_yn='N' AND S.Active_yn='Y'