-- STEP ONE
drop table GradeLevel;
create table GradeLevel (
	GradeLevel_id int, Student_id int, 
	Effective_dt datetime,
	School_tx varchar(3), Form_nb int, Result_tx varchar(3), Notes_tx varchar(64), 
	Deleted_yn char(1), Version_nb int, 
	Created_by varchar(32), Created_dt datetime, Created_tz varchar(12), 
	Modified_by varchar(32), Modified_dt datetime, Modified_tz varchar(12))
go


-- STEP THREE
insert into Student_Grade (Student_id, School_id, Program_id, Form_nb, Effective_dt, Notes_tx)
SELECT Student_id, School_id, 1 as Program_id, Form_nb, Effective_dt, Notes_tx FROM GradeLevel G inner join School S on (G.School_tx = s.School_nm)



-- STEP TWO
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (1, 22, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (2, 1, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (3, 23, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (4, 24, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (5, 25, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (6, 26, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (7, 2, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (8, 3, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (9, 27, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 4, NULL, N'NEW/Transfer', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (10, 4, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (11, 5, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (12, 6, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (13, 28, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (14, 7, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (15, 29, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (16, 30, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (17, 31, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (18, 8, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (19, 9, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (20, 32, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (21, 10, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, N'NEW/Transfer', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (22, 33, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (23, 34, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (24, 35, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (25, 11, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (26, 12, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (27, 36, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (28, 37, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (29, 13, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (30, 14, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (31, 15, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (32, 16, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (33, 38, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (34, 17, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (35, 39, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (36, 18, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (37, 19, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (38, 20, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (39, 21, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (40, 40, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (41, 41, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (42, 67, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (43, 42, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (44, 68, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 4, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (45, 43, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (46, 69, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (47, 44, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, N'Failed/Promoted', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (48, 70, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (49, 45, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (50, 71, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 2, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (51, 46, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (52, 47, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (53, 48, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (54, 49, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (55, 72, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (56, 73, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (57, 50, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (58, 74, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (59, 75, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (60, 76, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (61, 51, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (62, 77, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (63, 52, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (64, 78, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (65, 79, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (66, 53, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, N'not found?', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (67, 54, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (68, 80, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (69, 81, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (70, 55, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (71, 82, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (72, 56, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (73, 83, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013372A4 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (74, 57, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (75, 84, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (76, 58, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (77, 85, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 1, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (78, 59, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (79, 60, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (80, 86, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 5, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (81, 61, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (82, 62, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (83, 63, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (84, 64, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 1, N'failed', NULL, N'N', 2, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A170009A455C AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (85, 65, CAST(0x0000A13900000000 AS
DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (86, 87, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, N'NEW', N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (87, 66, CAST(0x0000A13900000000 AS
DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164013373D0 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (88, 49, CAST(0x00009B8400000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (89, 62, CAST(0x00009B8400000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (90, 37, CAST(0x00009B8400000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (91, 55, CAST(0x00009B8400000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (92, 23, CAST(0x00009CF100000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (93, 25, CAST(0x00009CF100000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (94, 30, CAST(0x00009CF100000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (95, 41, CAST(0x00009CF100000000 AS
DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (96, 45, CAST(0x00009CF100000000 AS
DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (97, 58, CAST(0x00009CF100000000 AS
DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (98, 13, CAST(0x00009CF100000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (99, 49, CAST(0x00009CF100000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (100, 62, CAST(0x00009CF100000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (101, 55, CAST(0x00009CF100000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
GO
print 'Processed 100 total records'
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (102, 42, CAST(0x00009CF100000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (103, 51, CAST(0x00009CF100000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (104, 37, CAST(0x00009CF100000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (105, 33, CAST(0x00009CF100000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (106, 38, CAST(0x00009CF100000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (107, 60, CAST(0x00009CF100000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (108, 23, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (109, 25, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (110, 30, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (111, 41, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (112, 45, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (113, 58, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (114, 24, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (115, 34, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (116, 36, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (117, 46, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (118, 57, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (119, 22, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (120, 43, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (121, 49, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (122, 55, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (123, 42, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (124, 51, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (125, 26, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (126, 59, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (127, 37, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (128, 33, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (129, 38, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (130, 60, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (131, 47, CAST(0x00009E5E00000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (132, 48, CAST(0x00009E5E00000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (133, 31, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (134, 50, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (135, 52, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (136, 56, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (137, 64, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (138, 66, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (139, 32, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (140, 35, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (141, 28, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (142, 23, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (143, 25, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (144, 24, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (145, 34, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (146, 36, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (147, 46, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (148, 22, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (149, 43, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (150, 55, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (151, 51, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (152, 26, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (153, 59, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (154, 37, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (155, 33, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (156, 38, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (157, 60, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (158, 47, CAST(0x00009FCB00000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (159, 48, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (160, 62, CAST(0x00009FCB00000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A164018316EC AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (162, 96, CAST(0x0000A13900000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A1660145B66C AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A1660145B66C AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (163, 98, CAST(0x0000A13900000000
AS DateTime), N'FHS', 2, NULL, N'NEW/OVC', N'N', 1, N'CHRIS',
CAST(0x0000A17300E7606C AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A17300E7606C AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (164, 2, CAST(0x0000A2A600000000 AS
DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (165, 29, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (166, 99, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (167, 100, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (168, 101, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (169, 102, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (170, 103, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (171, 104, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (172, 1, CAST(0x0000A2A600000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (173, 5, CAST(0x0000A2A600000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (174, 9, CAST(0x0000A2A600000000 AS
DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (175, 32, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (176, 105, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (177, 15, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (178, 16, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (179, 106, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (180, 80, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (181, 84, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (182, 107, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (183, 96, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (184, 108, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (185, 31, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (186, 109, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (187, 110, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (188, 35, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (189, 71, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (190, 111, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (191, 23, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (192, 112, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (193, 113, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (194, 8, CAST(0x0000A2A600000000 AS
DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (195, 22, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (196, 13, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (197, 14, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (198, 43, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (199, 69, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (200, 114, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (201, 115, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (202, 65, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (203, 27, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
GO
print 'Processed 200 total records'
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (204, 116, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (205, 68, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (206, 55, CAST(0x0000A2A600000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (207, 117, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (208, 4, CAST(0x0000A2A600000000 AS
DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (209, 118, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (210, 119, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (211, 120, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (212, 121, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (213, 122, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (214, 18, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (215, 19, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (216, 123, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (217, 21, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (218, 124, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (219, 125, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (220, 126, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (221, 127, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (222, 74, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (223, 128, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (224, 78, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (225, 83, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (226, 129, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (227, 3, CAST(0x0000A2A600000000 AS
DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (228, 130, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (229, 17, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (230, 20, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (231, 73, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (232, 131, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (233, 77, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 2, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E00EFFF10 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (234, 132, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (235, 81, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (236, 64, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (237, 24, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (238, 98, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (239, 133, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (240, 134, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (241, 10, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (242, 44, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (243, 135, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (244, 50, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (245, 76, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 2, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E00EFE098 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (246, 52, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (247, 56, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (248, 57, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (249, 87, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (250, 66, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (251, 136, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (252, 34, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (253, 36, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (254, 39, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (255, 137, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (256, 70, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (257, 75, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (258, 138, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (259, 82, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (260, 58, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (261, 63, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (262, 139, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (263, 26, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (264, 140, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 2, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E00EFB53C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (265, 45, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (266, 51, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (267, 54, CAST(0x0000A2A600000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A2E90122CC88 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (268, 141, CAST(0x0000A41300000000
AS DateTime), N'Fun', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A33E00F1DD30 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E00F1DD30 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (269, 142, CAST(0x0000A41300000000
AS DateTime), N'Fun', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A33E00F1E690 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E00F1E690 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (270, 143, CAST(0x0000A41300000000
AS DateTime), N'Pea', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A33E0101B188 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E0101B188 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (271, 144, CAST(0x0000A41300000000
AS DateTime), N'Pea', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A33E01034F34 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E01034F34 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (272, 145, CAST(0x0000A41300000000
AS DateTime), N'Pea', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A33E01043AC0 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A33E01043AC0 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (273, 24, CAST(0x0000A58300000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'JANALEE',
CAST(0x0000A625015E4204 AS DateTime), N'-03:00', N'JANALEE',
CAST(0x0000A625015E4204 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (288, 162, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (289, 163, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (290, 164, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (291, 165, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (293, 31, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (294, 109, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (295, 32, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (296, 167, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (297, 35, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (298, 105, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (299, 15, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (300, 168, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (301, 169, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (302, 99, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (303, 170, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (304, 101, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (305, 171, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (307, 71, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (309, 111, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (310, 103, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (311, 106, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (312, 104, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (313, 174, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (314, 175, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (315, 80, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (316, 176, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (318, 178, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (319, 179, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (320, 180, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500DF81F8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (336, 196, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500E6A294 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500E6A294 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (340, 200, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A64500E6A294 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A64500E6A294 AS DateTime), N'-03:00')
GO
print 'Processed 300 total records'
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (414, 162, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (415, 163, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (416, 164, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (417, 165, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (419, 31, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (420, 109, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (421, 32, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (422, 167, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (423, 35, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (424, 105, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (425, 15, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (426, 168, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (427, 169, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (428, 99, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (429, 170, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (430, 101, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (431, 171, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (433, 71, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (435, 111, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (436, 103, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (437, 106, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (439, 174, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (440, 175, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (441, 80, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (442, 176, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (444, 178, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (445, 179, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (446, 180, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699001657EC AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (447, 181, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (448, 182, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (449, 183, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (450, 184, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (451, 185, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (452, 186, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (453, 187, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (454, 188, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (455, 189, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (456, 190, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (457, 191, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (458, 192, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (459, 193, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (460, 194, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (461, 195, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (463, 197, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (464, 198, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (465, 199, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (467, 162, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (468, 163, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (469, 164, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (470, 165, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (471, 166, CAST(0x0000A58000000000
AS DateTime), N'PCH', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (472, 31, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (473, 109, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (474, 32, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (475, 167, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (476, 35, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (477, 105, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (478, 15, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (479, 168, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (480, 169, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (481, 99, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (482, 170, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (483, 101, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (484, 171, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (485, 172, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 2, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6D400800E08 AS DateTime), N'-04:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (486, 71, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (487, 173, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (488, 111, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (489, 103, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (490, 106, CAST(0x0000A58000000000
AS DateTime), N'PCH', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (492, 174, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (493, 175, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (494, 80, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (495, 176, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (497, 178, CAST(0x0000A58000000000
AS DateTime), N'PCH', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (498, 179, CAST(0x0000A58000000000
AS DateTime), N'PCH', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (499, 180, CAST(0x0000A58000000000
AS DateTime), N'PCH', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A6990018603C AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (500, 234, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (501, 24, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (502, 235, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (503, 117, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (504, 133, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (505, 236, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (506, 237, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (507, 238, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (508, 239, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (509, 240, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (510, 241, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (511, 118, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (512, 242, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (513, 243, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (514, 244, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (515, 10, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (516, 245, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (517, 246, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (518, 247, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (519, 130, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (520, 119, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (521, 248, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (522, 120, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (523, 249, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
GO
print 'Processed 400 total records'
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (524, 17, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (525, 122, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (526, 250, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (527, 19, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (528, 20, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (529, 21, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (530, 251, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (531, 252, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (532, 253, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (533, 254, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (534, 255, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (535, 256, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (536, 257, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (537, 258, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (538, 44, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (539, 70, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (540, 259, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (541, 124, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (542, 135, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (543, 260, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (544, 125, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (545, 261, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (546, 73, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (547, 126, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (548, 50, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (549, 74, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (550, 262, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (551, 141, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (552, 77, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (553, 263, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (554, 52, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (555, 265, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (556, 266, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (557, 81, CAST(0x0000A58000000000
AS DateTime), N'FHS', 4, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (558, 267, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (559, 56, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (560, 268, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (561, 269, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (562, 270, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (563, 57, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (564, 271, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (565, 272, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (566, 273, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (567, 274, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (568, 275, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (569, 276, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (570, 277, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (571, 278, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (572, 279, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (573, 280, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (574, 281, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (575, 64, CAST(0x0000A58000000000
AS DateTime), N'FHS', 3, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (576, 282, CAST(0x0000A58000000000
AS DateTime), N'FHS', 2, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (577, 283, CAST(0x0000A58000000000
AS DateTime), N'FHS', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (578, 66, CAST(0x0000A58000000000
AS DateTime), N'FHS', 5, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A699002997A8 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (579, 146, CAST(0x0000A58000000000
AS DateTime), N'Fun', 1, NULL, NULL, N'N', 1, N'CHRIS',
CAST(0x0000A69B01532964 AS DateTime), N'-03:00', N'CHRIS',
CAST(0x0000A69B01532964 AS DateTime), N'-03:00')
INSERT GradeLevel (GradeLevel_id, Student_id, Effective_dt,
School_tx, Form_nb, Result_tx, Notes_tx, Deleted_yn,
Version_nb, Created_by, Created_dt, Created_tz, Modified_by,
Modified_dt, Modified_tz) VALUES (580, 96, CAST(0x0000A58000000000
AS DateTime), N'Pea', 4, NULL, NULL, N'N', 2, N'CHRIS',
CAST(0x0000A6D30092F4B4 AS DateTime), N'-04:00', N'CHRIS',
CAST(0x0000A6D3009361B0 AS DateTime), N'-04:00')

