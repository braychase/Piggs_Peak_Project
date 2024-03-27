DROP TABLE IF EXISTS Student_Status;
go

CREATE TABLE Student_Status (
	Status_id INT NOT NULL PRIMARY KEY,
	Status_nm varchar(12) NOT NULL
	);

INSERT INTO Student_Status VALUES (1, 'New');
INSERT INTO Student_Status VALUES (2, 'Active');
INSERT INTO Student_Status VALUES (3, 'Graduated');
INSERT INTO Student_Status VALUES (4, 'Failed');
INSERT INTO Student_Status VALUES (5, 'Moved');
INSERT INTO Student_Status VALUES (6, 'Pregnant');
INSERT INTO Student_Status VALUES (7, 'Deceased');
INSERT INTO Student_Status VALUES (99, 'Unknown');

ALTER TABLE Student ADD 
	Status_id INT NOT NULL DEFAULT 1,
	FOREIGN KEY (Status_id ) REFERENCES Student_Status (Status_id);
go

UPDATE Student SET Status_id=99
UPDATE Student SET Status_id=1 WHERE New_yn='Y'
UPDATE Student SET Status_id=2 WHERE Active_yn='Y' 
UPDATE Student SET Status_id=3 WHERE Active_yn='N' AND Form_nb=5
UPDATE Student SET Status_id=99 WHERE Status_id=1 AND StartYear_nb < 2023

--ALTER TABLE Student DROP New_yn;
--ALTER TABLE Student DROP Active_yn;

SELECT StartYear_nb, Status_nm, count(*)
FROM Student S INNER JOIN Student_Status SS ON (S.Status_id = SS.Status_id)
WHERE Deleted_yn='N'
GROUP BY StartYear_nb, Status_nm
