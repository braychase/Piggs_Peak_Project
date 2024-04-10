ALTER TABLE Student
	ADD Program_id INT NOT NULL DEFAULT 1;

UPDATE Student_Grade 
	SET Program_id = 1
	WHERE Program_id IS NULL;

update S
set S.School_id = G.School_id, S.Form_nb=G.Form_nb, S.Program_id = G.Program_id
From Student S
	JOIN Student_Grade G ON (S.Student_id = G.Student_id 
		AND G.Effective_dt = (SELECT MAX(Effective_dt) FROM Student_Grade G2 WHERE S.Student_id = G2.Student_id));

-- now re-load v_StudentSearch

