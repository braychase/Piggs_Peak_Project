/*
DELETE from Student_Grade where StudentGrade_id > 0;
Alter table Student_Grade modify StudentGrade_id INT NOT NULL AUTO_INCREMENT;
Alter table Student_Grade modify Program_id int not null default 1;
select * from Student_Grade ;
DELETE from Student_Grade where StudentGrade_id > 0;

update S
set S.School_id = G.School_id
From Student S
LEFT JOIN Student_Grade G ON (S.Student_id = G.Student_id AND G.Effective_dt = (SELECT MAX(Effective_dt) FROM Student_Grade G2 WHERE S.Student_id = G2.Student_id))
*/

tweak

INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (1, 'DLAMINI, Ayanda', 'Ayanda', 'DLAMINI', 'PCH-2013-01', '1999-10-17', 'F', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (2, 'DLAMINI, Lindokuhle', 'Lindokuhle', 'DLAMINI', 'PCH-2013-02', '1997-10-31', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (3, 'DLAMINI, Mancoba', 'Mancoba', 'DLAMINI', 'FHS-2013-01', 'M', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (4, 'DLAMINI, Mthobisi', 'Mthobisi', 'DLAMINI', 'FHS-2013-02', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (5, 'DLAMINI, Nolwazi', 'Nolwazi', 'DLAMINI', 'PCH-2013-04', '1997-05-30', 'F', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (6, 'DLAMINI, Nonhlanhla', 'Nonhlanhla', 'DLAMINI', 'FHS-2013-03', 'F', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (7, 'DLAMINI, Philipine', 'Philipine', 'DLAMINI', 'FHS-2013-04', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (8, 'DLAMINI, Siphesihle Buyile', 'Siphesihle Buyile', 'DLAMINI', 'PCH-2013-06', '1997-10-09', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (9, 'DLAMINI, Temalangeni', 'Temalangeni', 'DLAMINI', 'PCH-2013-07', '1997-06-16 20:47:59', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (10, 'HLOPHE, Ayanda', 'Ayanda', 'HLOPHE', 'FHS-2013-05', '1996-07-28', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (11, 'MABUZA, Sipho', 'Sipho', 'MABUZA', 'PCH-2013-12', '1991-03-22 13:06:01', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (12, 'MADUNA, Cebsile', 'Cebsile', 'MADUNA', 'PCH-2013-08', '1997-10-07 20:14:13', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (13, 'MAGAGULA, Nelsiwe', 'Nelsiwe', 'MAGAGULA', 'PCH-2010-04', '1996-08-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (14, 'MAGAGULA, Nhlanhla', 'Nhlanhla', 'MAGAGULA', 'PCH-2013-09', '1995-04-04', 'M', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (15, 'MAGAGULA, Ntobeko', 'Ntobeko', 'MAGAGULA', 'PCH-2013-10', '1995-10-14', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (16, 'MALINGA, Noncebo', 'Noncebo', 'MALINGA', 'PCH-2013-11', '1992-08-20', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (17, 'MASEKO, Lwazi', 'Lwazi', 'MASEKO', 'FHS-2013-06', '1997-04-01', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (18, 'MASEKO, Philile', 'Philile', 'MASEKO', 'FHS-2013-07', '1996-09-29', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (19, 'MASEKO, Sithembiso', 'Sithembiso', 'MASEKO', 'FHS-2013-08', '1993-04-20', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (20, 'MASEKO, Thabo', 'Thabo', 'MASEKO', 'FHS-2013-09', '1997-01-11', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (21, 'MASILELA, Mbongeni', 'Mbongeni', 'MASILELA', 'FHS-2013-10', '1998-10-29', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (22, 'DLAKUBI, Bongumusa', 'Bongumusa', 'DLAKUBI', 'PCH-2011-01', '1997-09-17', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (23, 'DLAMINI, Cebsile', 'Cebsile', 'DLAMINI', 'PCH-2010-01', '1995-09-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (24, 'DLAMINI, Celumusa', 'Celumusa', 'DLAMINI', 'FHS-2011-01', '1995-03-18', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (25, 'DLAMINI, Delani', 'Delani', 'DLAMINI', 'PCH-2010-02', '1993-02-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (26, 'DLAMINI, Hlengiwe', 'Hlengiwe', 'DLAMINI', 'FHS-2011-02', '1994-04-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (27, 'DLAMINI, Mfanzile', 'Mfanzile', 'DLAMINI', 'PCH-2013-03', '1990-06-06', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (28, 'DLAMINI, Nonhlanhla', 'Nonhlanhla', 'DLAMINI', 'PCH-2012-01', '1994-03-28', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (29, 'DLAMINI, Sibusiso', 'Sibusiso', 'DLAMINI', 'PCH-2013-05', '1992-03-06', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (30, 'DLAMINI, Sicelo', 'Sicelo', 'DLAMINI', 'PCH-2010-03', '1993-08-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (31, 'DLAMINI, Simphiwe', 'Simphiwe', 'DLAMINI', 'PCH-2012-02', '1995-06-09', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (32, 'DLAMINI, Thandeka', 'Thandeka', 'DLAMINI', 'PCH-2012-03', '1998-08-14', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (33, 'KHUMALO, Mongi', 'Mongi', 'KHUMALO', 'FHS-2010-01', '1991-03-31', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (34, 'LUKHELE, Bongmusa Mdu', 'Bongmusa Mdu', 'LUKHELE', 'FHS-2011-03', '1998-02-06', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (35, 'MABUZA, Zethu', 'Zethu', 'MABUZA', 'PCH-2012-04', '1996-12-20', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (36, 'MADZINANE, Sibusiso', 'Sibusiso', 'MADZINANE', 'FHS-2011-04', '1996-03-05', 'M', 'Y', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (37, 'MAGAGULA, Hlobsile', 'Hlobsile', 'MAGAGULA', 'PCH-2009-01', '1995-02-15', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (38, 'MASEKO, Lewis', 'Lewis', 'MASEKO', 'FHS-2010-02', '1991-09-29', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (39, 'MASEKO, Machawe', 'Machawe', 'MASEKO', 'FHS-2012-01', '1996-04-19', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (40, 'MASILELA, Nomphumelelo', 'Nomphumelelo', 'MASILELA', 'FHS-2012-02', '1998-12-25', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (41, 'MASIMULA, Lindelwa', 'Lindelwa', 'MASIMULA', 'FHS-2010-03', '1996-07-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (42, 'MATHUNJWA, Mathokoza', 'Mathokoza', 'MATHUNJWA', 'FHS-2010-04', '1995-06-27', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (43, 'MAVUSO, Jabulani', 'Jabulani', 'MAVUSO', 'PCH-2011-02', '1994-05-13', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (44, 'MAZIBUKO, Kwanele', 'Kwanele', 'MAZIBUKO', 'FHS-2013-11', '1996-09-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (45, 'MAZIBUKO, Nontokozo', 'Nontokozo', 'MAZIBUKO', 'FHS-2010-05', '1995-07-09', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (46, 'MBOKAZI, Bongiwe', 'Bongiwe', 'MBOKAZI', 'FHS-2011-05', '1996-10-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (47, 'MBULI, Muzi', 'Muzi', 'MBULI', 'FHS-2011-06', '1996-05-23', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (48, 'MDLOVU, Sandile', 'Sandile', 'MDLOVU', 'PCH-2011-03', '1987-03-15', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (49, 'MDLULI, Hlobsile', 'Hlobsile', 'MDLULI', 'PCH-2009-02', '1996-01-16', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (50, 'MNCINA, Bafana', 'Bafana', 'MNCINA', 'FHS-2012-04', '1997-08-31', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (51, 'MNDZEBELE, Celiwe', 'Celiwe', 'MNDZEBELE', 'FHS-2010-06', '1993-11-23', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (52, 'MNISI, Saneliso Fifiso', 'Saneliso Fifiso', 'MNISI', 'FHS-2012-05', '1996-06-05', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (53, 'MTFUPHA, Ntombifuthi', 'Ntombifuthi', 'MTFUPHA', 'PCH-2012-05', '1995-05-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (54, 'MZWAKHE, Mdziniso', 'Mdziniso', 'MZWAKHE', 'FHS-2012-06', '1994-02-02', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (55, 'NDZINISA, Hloniphile', 'Hloniphile', 'NDZINISA', 'PCH-2010-05', '1994-05-23', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (56, 'NGUBENI, Zakhele', 'Zakhele', 'NGUBENI', 'FHS-2012-07', '1997-09-28', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (57, 'NXUMALO, Bongiswa', 'Bongiswa', 'NXUMALO', 'FHS-2011-07', '1995-07-19', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (58, 'SHIBA, Dumsile', 'Dumsile', 'SHIBA', 'FHS-2010-07', '1995-11-18', 'F', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (59, 'SIBAMBA, Lizzy', 'Lizzy', 'SIBAMBA', 'PCH-2011-04', '1993-08-01', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (60, 'SIBANDAZE, Nomcebo', 'Nomcebo', 'SIBANDAZE', 'FHS-2010-08', '1995-12-28', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (61, 'SIHLONGONYANE, Bonsile', 'Bonsile', 'SIHLONGONYANE', 'PCH-2012-06', '1996-07-23', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (62, 'SIMELANE, Mfan''fikle', 'Mfan''fikle', 'SIMELANE', 'PCH-2009-03', '1994-07-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (63, 'SIWELA, Nonhlanhla', 'Nonhlanhla', 'SIWELA', 'FHS-2012-08', '1996-04-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (64, 'TSELA, Nkosingiphile', 'Nkosingiphile', 'TSELA', 'FHS-2012-09', '1995-07-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (65, 'ZONDI, Ntokozo', 'Ntokozo', 'ZONDI', 'PCH-2012-07', '1994-07-18', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (66, 'ZWANE, Nkosikhona', 'Nkosikhona', 'ZWANE', 'FHS-2012-10', '1997-07-15', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (67, 'MASUKU, Nothando', 'Nothando', 'MASUKU', 'FHS-2012-03', '1993-09-15', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (68, 'MATSABATSA, Thokozani', 'Thokozani', 'MATSABATSA', 'PCH-2013-13', '1996-09-08 20:08:37', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (69, 'MAVUSO, Prophet', 'Prophet', 'MAVUSO', 'PCH-2013-14', '1995-04-25', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (70, 'MAZIBUKO, Nokulunga', 'Nokulunga', 'MAZIBUKO', 'FHS-2013-12', '1994-04-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (71, 'MBHAMALI, Mcolisi', 'Mcolisi', 'MBHAMALI', 'PCH-2013-15', '1997-12-09', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (72, 'MKHONTA, Linda', 'Linda', 'MKHONTA', 'FHS-2013-13', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (73, 'MKHONTFO, Tengetile', 'Tengetile', 'MKHONTFO', 'FHS-2013-14', '2000-02-24', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (74, 'MNCINA, Ciniso', 'Ciniso', 'MNCINA', 'FHS-2013-15', '1999-05-20', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (75, 'MNCINA, Lwazi', 'Lwazi', 'MNCINA', 'FHS-2013-16', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (76, 'MNCINA, Sonnyboy', 'Sonnyboy', 'MNCINA', 'FHS-2013-17', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (77, 'MNISI, Mpendulo', 'Mpendulo', 'MNISI', 'FHS-2013-18', '1999-07-28', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (78, 'MSIBI, Phetsile', 'Phetsile', 'MSIBI', 'FHS-2013-19', 'F', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (79, 'MSWELI, Temnotfo', 'Temnotfo', 'MSWELI', 'PCH-2013-16', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (80, 'NDLOVU, Nqabayetu', 'Nqabayetu', 'NDLOVU', 'PCH-2013-17', '1996-10-25', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (81, 'NDWANDWE, Mhlengi', 'Mhlengi', 'NDWANDWE', 'FHS-2013-20', '1995-09-26', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (82, 'NDZINISA, Nelsiwe', 'Nelsiwe', 'NDZINISA', 'FHS-2013-21', '1998-05-09', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (83, 'NHLENGETFWA, Thabo', 'Thabo', 'NHLENGETFWA', 'FHS-2013-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (84, 'NXUMALO, Siyabonga', 'Siyabonga', 'NXUMALO', 'PCH-2013-18', '2000-04-16', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (85, 'SHONGWE, Phinda Junior', 'Phinda Junior', 'SHONGWE', 'PCH-2013-19', '1995-10-08 22:04:58', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (86, 'SIFUNDZA, Neliswa', 'Neliswa', 'SIFUNDZA', 'PCH-2013-20', '1992-01-12 22:06:29', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (87, 'ZWANE, Eunice', 'Eunice', 'ZWANE', 'FHS-2013-23', '1994-02-17 12:52:07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (96, 'SIMELANE, Thembinkosi', 'Thembinkosi', 'SIMELANE', 'PCH-2013-21', '1993-04-08', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (98, 'DLAMINI, Nonhlanhla Faith', 'Nonhlanhla Faith', 'DLAMINI', 'FHS-2013-24', '1997-01-03 14:01:40', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (99, 'MASEKO, Sicelo', 'Sicelo', 'MASEKO', 'PCH-2014-01', '2000-10-14', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (100, 'MASIMULA, Sandile', 'Sandile', 'MASIMULA', 'PCH-2014-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (101, 'MASUKU, Ntsandvo', 'Ntsandvo', 'MASUKU', 'PCH-2014-03', '2000-05-04', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (102, 'MKONTA, Khanysile', 'Khanysile', 'MKONTA', 'PCH-2014-04', '1998-01-01', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (103, 'MNCINA, Ncedo', 'Ncedo', 'MNCINA', 'PCH-2014-05', '1999-07-26', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (104, 'MTSETFWA, Zandile', 'Zandile', 'MTSETFWA', 'PCH-2014-06', '1998-12-14', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (105, 'MADLOPHA, Phindile', 'Phindile', 'MADLOPHA', 'PCH-2014-07', '2000-05-27', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (106, 'MNCINA, Nosipho', 'Nosipho', 'MNCINA', 'PCH-2014-08', '1998-04-15', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (107, 'SHIBA, Goodness', 'Goodness', 'SHIBA', 'PCH-2014-09', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (108, 'THUSI, Simanga', 'Simanga', 'THUSI', 'PCH-2014-10', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (109, 'DLAMINI, Sindiso', 'Sindiso', 'DLAMINI', 'PCH-2014-11', '1995-09-13', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (110, 'GULE, Nozipho', 'Nozipho', 'GULE', 'PCH-2014-12', '1995-07-17 16:16:16', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (111, 'MKHONTFO, Nokwethu', 'Nokwethu', 'MKHONTFO', 'PCH-2014-13', '1999-08-15', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (112, 'DLAMINI, Mpendulo', 'Mpendulo', 'DLAMINI', 'PCH-2014-14', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (113, 'DLAMINI, Prudence', 'Prudence', 'DLAMINI', 'PCH-2014-15', '1996-09-09', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (114, 'MBINGO, Nothando', 'Nothando', 'MBINGO', 'PCH-2014-16', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (115, 'MHLANGA, Nontokozo', 'Nontokozo', 'MHLANGA', 'PCH-2014-17', '1997-12-05', 'F', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (116, 'MASEKO, Mlungisi', 'Mlungisi', 'MASEKO', 'PCH-2014-18', '1991-09-20 16:20:33', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (117, 'DLAMINI, Maxwell', 'Maxwell', 'DLAMINI', 'FHS-2014-01', '1996-05-06', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (118, 'FAKUDZE, Mzwandile', 'Mzwandile', 'FAKUDZE', 'FHS-2014-02', '1998-02-25', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (119, 'MABONA, Yoliswa', 'Yoliswa', 'MABONA', 'FHS-2014-03', '2000-07-24', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (120, 'MAMBA, Lunga', 'Lunga', 'MAMBA', 'FHS-2014-04', '1999-06-02', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (121, 'MASEKO, Makhosazane', 'Makhosazane', 'MASEKO', 'FHS-2014-05', '2000-09-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (122, 'MASEKO, Mandlenkosi', 'Mandlenkosi', 'MASEKO', 'FHS-2014-06', '1999-11-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (123, 'MAVUSO, Nomcedo', 'Nomcedo', 'MAVUSO', 'FHS-2014-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (124, 'SIMELANE, Mzwethu', 'Mzwethu', 'SIMELANE', 'FHS-2014-08', '2000-03-29', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (125, 'METISO, Nomfundo', 'Nomfundo', 'METISO', 'FHS-2014-09', '1996-06-18', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (126, 'MKOKO, Lihle', 'Lihle', 'MKOKO', 'FHS-2014-10', '1999-07-04', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (127, 'MKONTA, Machawe', 'Machawe', 'MKONTA', 'FHS-2014-11', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (128, 'MNISI, Silindile', 'Silindile', 'MNISI', 'FHS-2014-12', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (129, 'NYAMANE, Sayinile', 'Sayinile', 'NYAMANE', 'FHS-2014-13', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (130, 'KUNENE, Mlandvo', 'Mlandvo', 'KUNENE', 'FHS-2014-14', '1998-01-01', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (131, 'MNDZEBELE, Mpendulo', 'Mpendulo', 'MNDZEBELE', 'FHS-2014-15', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (132, 'MYANGA, Nomkhosi', 'Nomkhosi', 'MYANGA', 'FHS-2014-16', '1995-07-17', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (133, 'DLAMINI, Nontokozo', 'Nontokozo', 'DLAMINI', 'FHS-2014-17', '1998-05-10', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (134, 'DLAMINI, Thoko', 'Thoko', 'DLAMINI', 'FHS-2014-18', '1995-11-27', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (135, 'MDLETSHE, Machawe', 'Machawe', 'MDLETSHE', 'FHS-2014-19', '1998-02-27', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (136, 'DLAMINI, Nonhlanhla Nomphumelelo', 'Nonhlanhla Nomphumelelo', 'DLAMINI', 'FHS-2014-20', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (137, 'MASEKO, Phumlile', 'Phumlile', 'MASEKO', 'FHS-2014-21', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (138, 'MSITSINI, Siboniso', 'Siboniso', 'MSITSINI', 'FHS-2014-22', '1997-11-15', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (139, 'DLAMINI, Glory', 'Glory', 'DLAMINI', 'FHS-2014-23', '1996-03-16 16:54:06', 'F', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (140, 'HLOPHE, Mayibongwe', 'Mayibongwe', 'HLOPHE', 'FHS-2014-24', '1991-08-18', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (141, 'MNISI, Bongi', 'Bongi', 'MNISI', 'FHS-2014-25', '1998-11-28', 'M', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (142, 'GAMA, Nomfundo', 'Nomfundo', 'GAMA', 'FHS-2014-26', '1998-08-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (143, 'DLAMINI, Nomcebo', 'Nomcebo', 'DLAMINI', 'PCH-2014-19', '1995-07-16 15:36:51', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (144, 'DLAMINI, Simphesihle Thandazile', 'Simphesihle Thandazile', 'DLAMINI', 'PCH-2014-20', '1999-05-14', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (145, 'VILAKATI, Sindiswa', 'Sindiswa', 'VILAKATI', 'PCH-2014-21', '2001-04-11', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (146, 'DLAMINI, Bongeka', 'Bongeka', 'DLAMINI', 'FHS-2016-01', '2001-09-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (162, 'BANDA, Phila', 'Phila', 'BANDA', 'PCH-2015-01', '1999-02-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (163, 'DLAMINI, Bonginkosi', 'Bonginkosi', 'DLAMINI', 'PCH-2015-02', '1992-08-04', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (164, 'DLAMINI, Cinisile', 'Cinisile', 'DLAMINI', 'PCH-2015-03', '1997-08-02', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (165, 'DLAMINI, Nandi', 'Nandi', 'DLAMINI', 'PCH-2015-04', '2000-03-24', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (166, 'DLAMINI, Nothando', 'Nothando', 'DLAMINI', 'PCH-2015-05', '2001-01-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (167, 'JOZINI, Nomsa', 'Nomsa', 'JOZINI', 'PCH-2015-06', '2000-04-24', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (168, 'MANGWE, Marcia', 'Marcia', 'MANGWE', 'PCH-2015-07', '2001-04-03', 'F', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (169, 'MASEKO, Bhekiwe', 'Bhekiwe', 'MASEKO', 'PCH-2015-08', '1997-11-13', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (170, 'MASIMULA, Samkeliswe', 'Samkeliswe', 'MASIMULA', 'PCH-2015-09', '2002-03-04', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (171, 'MAVIMBELA, Nonduduzo', 'Nonduduzo', 'MAVIMBELA', 'PCH-2015-10', '1998-06-11', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (172, 'MAVUSO, Nomcebo', 'Nomcebo', 'MAVUSO', 'PCH-2015-11', '2000-07-31', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (173, 'MBHAMALI, Siboniso', 'Siboniso', 'MBHAMALI', 'PCH-2015-12', '2000-10-17', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (174, 'MVUBU, Mbuso', 'Mbuso', 'MVUBU', 'PCH-2015-13', '1998-06-30', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (175, 'MVUBU, Mzama', 'Mzama', 'MVUBU', 'PCH-2015-14', '1993-04-10', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (176, 'NDWANDWE, Siyabonga', 'Siyabonga', 'NDWANDWE', 'PCH-2015-15', '2000-04-16', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (178, 'TSELA, Nokubonga', 'Nokubonga', 'TSELA', 'PCH-2015-17', '1996-02-21', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (179, 'VILANE, Tandzile', 'Tandzile', 'VILANE', 'PCH-2015-18', '1998-05-28', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (180, 'ZONDI, Nokwanda', 'Nokwanda', 'ZONDI', 'PCH-2015-19', '1998-12-30', 'F', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (181, 'BASHIRI, Philani', 'Philani', 'BASHIRI', 'PCH-2016-01', '2001-07-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (182, 'DLAMINI, Ntombikayise', 'Ntombikayise', 'DLAMINI', 'PCH-2016-02', '2002-03-22', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (183, 'DLAMINI, Silindile', 'Silindile', 'DLAMINI', 'PCH-2016-03', '1994-08-18', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (184, 'DLAMINI, Zuzile', 'Zuzile', 'DLAMINI', 'PCH-2016-04', '2000-10-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (185, 'FAKUDZE, Nkosiyazi', 'Nkosiyazi', 'FAKUDZE', 'PCH-2016-05', '1999-07-31', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (186, 'LANGA, Bongiwe', 'Bongiwe', 'LANGA', 'PCH-2016-06', '2001-01-09', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (187, 'MABUZA, Neliswa', 'Neliswa', 'MABUZA', 'PCH-2016-07', '2002-07-30', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (188, 'MAGAGULA, Thembelihle', 'Thembelihle', 'MAGAGULA', 'PCH-2016-08', '1991-06-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (189, 'MAYISA, Nobuhle Bongiwe', 'Nobuhle Bongiwe', 'MAYISA', 'PCH-2016-09', '1997-03-25', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (190, 'MAMBA, Sneke', 'Sneke', 'MAMBA', 'PCH-2016-10', '1999-12-01', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (191, 'MASEKO, Siyabonga', 'Siyabonga', 'MASEKO', 'PCH-2016-11', '2001-01-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (192, 'MASIMULA, Lihle', 'Lihle', 'MASIMULA', 'PCH-2016-12', '2000-07-13', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (193, 'MATSEBULA, Njabulo', 'Njabulo', 'MATSEBULA', 'PCH-2016-13', '1992-06-16', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (194, 'MATSINYA, Celumusa', 'Celumusa', 'MATSINYA', 'PCH-2016-14', '1999-08-08', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (195, 'MAZIYA, Ntobeko', 'Ntobeko', 'MAZIYA', 'PCH-2016-15', '2000-03-12', 'F', 'Y', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (196, 'MKHONTA, Thando', 'Thando', 'MKHONTA', 'PCH-2016-16', '1998-12-09', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (197, 'MNISI, Nongcebo', 'Nongcebo', 'MNISI', 'PCH-2016-17', '2000-05-25', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (198, 'MVUBU, Gcina', 'Gcina', 'MVUBU', 'PCH-2016-18', '2003-02-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (199, 'NDLELA, Siyabonga', 'Siyabonga', 'NDLELA', 'PCH-2016-19', '2002-10-02', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (200, 'ZWANE, Tengetile', 'Tengetile', 'ZWANE', 'PCH-2016-20', '2001-08-19', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (234, 'DLAMINI, Bongeka', 'Bongeka', 'DLAMINI', 'FHS-2016-02', '2001-09-11', 'F', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (235, 'DLAMINI, Ciniso', 'Ciniso', 'DLAMINI', 'FHS-2016-03', '2000-11-03', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (236, 'DLAMINI, Nocolo', 'Nocolo', 'DLAMINI', 'FHS-2016-04', '1994-05-19', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (237, 'DLAMINI, Siyabonga', 'Siyabonga', 'DLAMINI', 'FHS-2016-05', '2001-09-18', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (238, 'DLAMINI, Tengetile', 'Tengetile', 'DLAMINI', 'FHS-2016-06', '1997-10-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (239, 'DLAMINI, Zamekile', 'Zamekile', 'DLAMINI', 'FHS-2016-07', '1997-01-26', 'F', 'Y', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (240, 'DLAMINI, Zandile', 'Zandile', 'DLAMINI', 'FHS-2016-08', '1998-03-24', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (241, 'DVUBA, Temazomba', 'Temazomba', 'DVUBA', 'FHS-2016-09', '2000-08-01', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (242, 'GAMA, Primrose', 'Primrose', 'GAMA', 'FHS-2016-10', '2001-08-01', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (243, 'GININDZA, Lindizwi', 'Lindizwi', 'GININDZA', 'FHS-2016-11', '2000-10-30', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (244, 'GININDZA, Sincedzile', 'Sincedzile', 'GININDZA', 'FHS-2016-12', '1997-12-13', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (245, 'KHUMALO, Nomvuselelo', 'Nomvuselelo', 'KHUMALO', 'FHS-2016-13', '1998-11-19', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (246, 'KHUMALO, Sihlobo', 'Sihlobo', 'KHUMALO', 'FHS-2016-14', '1999-01-05', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (247, 'KUNENE, Bhekiwe', 'Bhekiwe', 'KUNENE', 'FHS-2016-15', '2002-05-12', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (248, 'MALINDZISA, Sanele', 'Sanele', 'MALINDZISA', 'FHS-2016-16', '1993-02-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (249, 'MANYATSI, Phetsile', 'Phetsile', 'MANYATSI', 'FHS-2016-17', '1994-03-11', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (250, 'MASEKO, Musa', 'Musa', 'MASEKO', 'FHS-2016-18', '1997-10-15', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (251, 'MASUKU, Nonsikelelo', 'Nonsikelelo', 'MASUKU', 'FHS-2016-19', '2002-03-28', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (252, 'MATHONSI, Thulisile', 'Thulisile', 'MATHONSI', 'FHS-2016-20', '1993-12-31', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (253, 'MATSEBULA, Nothando', 'Nothando', 'MATSEBULA', 'FHS-2016-21', '2001-01-27', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (254, 'MATSEBULA, Sandiso', 'Sandiso', 'MATSEBULA', 'FHS-2016-22', '2001-02-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (255, 'MATSENJWA, Celumusa', 'Celumusa', 'MATSENJWA', 'FHS-2016-23', '1993-11-18', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (256, 'MAVUSA, Mbali', 'Mbali', 'MAVUSA', 'FHS-2016-24', '2001-11-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (257, 'MAYISELA, Hlengiwe', 'Hlengiwe', 'MAYISELA', 'FHS-2016-25', '2003-01-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (258, 'MAZIBUKO, Gcina', 'Gcina', 'MAZIBUKO', 'FHS-2016-26', '2000-10-28', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (259, 'MAZIYA, Mlandvo', 'Mlandvo', 'MAZIYA', 'FHS-2016-27', '1999-04-04', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (260, 'METHULA, Samukelisiwe', 'Samukelisiwe', 'METHULA', 'FHS-2016-28', '2002-03-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (261, 'MHLANGA, Sihle', 'Sihle', 'MHLANGA', 'FHS-2016-29', '2001-02-24', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (262, 'MNCINA, Wakhile', 'Wakhile', 'MNCINA', 'FHS-2016-30', '2001-11-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (263, 'MNISI, Samkelo', 'Samkelo', 'MNISI', 'FHS-2016-31', '2001-11-23', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (264, 'MNISI, Saneliso Sifiso', 'Saneliso Sifiso', 'MNISI', 'FHS-2016-32', '1996-06-05', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (265, 'MOTSA, Colani', 'Colani', 'MOTSA', 'FHS-2016-33', '2000-12-15', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (266, 'MOTSA, Patience', 'Patience', 'MOTSA', 'FHS-2016-34', '1999-10-10', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (267, 'NDZINGANE, Sizasizwe Siyabonga', 'Sizasizwe Siyabonga', 'NDZINGANE', 'FHS-2016-35', '2001-07-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (268, 'NKHAMBULE, Mvuselelo', 'Mvuselelo', 'NKHAMBULE', 'FHS-2016-36', '1997-03-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (269, 'NKHAMBULE, Sphesihle', 'Sphesihle', 'NKHAMBULE', 'FHS-2016-37', '2001-04-02', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (270, 'NTSHALINTSHALI, Lihle', 'Lihle', 'NTSHALINTSHALI', 'FHS-2016-38', '2000-03-03', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (271, 'NYAMANE, Kholiwe', 'Kholiwe', 'NYAMANE', 'FHS-2016-39', '2002-11-06', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (272, 'NYAMANE, Siphelele', 'Siphelele', 'NYAMANE', 'FHS-2016-40', '2000-02-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (273, 'SHABANGU, Andile', 'Andile', 'SHABANGU', 'FHS-2016-41', '1998-03-03', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (274, 'SHABANGU, Sanele', 'Sanele', 'SHABANGU', 'FHS-2016-42', '2000-03-27', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (275, 'SHIBA, Dumsani', 'Dumsani', 'SHIBA', 'FHS-2016-43', '2001-03-15', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (276, 'SHIBA, Lungisile', 'Lungisile', 'SHIBA', 'FHS-2016-44', '2001-03-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (277, 'SHIBA, Melusi', 'Melusi', 'SHIBA', 'FHS-2016-45', '2001-12-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (278, 'SHIBA, Thabiso', 'Thabiso', 'SHIBA', 'FHS-2016-46', '1998-02-26', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (279, 'TFUSI, Mayibongwe', 'Mayibongwe', 'TFUSI', 'FHS-2016-47', '2000-03-03', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (280, 'TSABEDZE, Nomvuyo', 'Nomvuyo', 'TSABEDZE', 'FHS-2016-48', '2002-02-24', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (281, 'TSABEDZE, Andile', 'Andile', 'TSABEDZE', 'FHS-2016-49', '2001-05-02', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (282, 'VILAKATI, Tengetile', 'Tengetile', 'VILAKATI', 'FHS-2016-50', '1999-09-03', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (283, 'ZIKALALA, Nompilo', 'Nompilo', 'ZIKALALA', 'FHS-2016-51', '2002-02-02', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (284, 'ZWANE, NKHOSIKHONA', 'Nkhosikhona', 'ZWANE', 'FHS-2016-52', '1997-07-15', 'M', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (285, 'DLAMINI, Princess Kwanele', 'Princess Kwanele', 'DLAMINI', 'PCH-2017-01', '2001-08-08', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (286, 'DLAMINI, Temkhuleko Felicia', 'Temkhuleko Felicia', 'DLAMINI', 'PCH-2017-02', '2001-10-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (287, 'MNDZEBELE, Lethu Busisiwe', 'Lethu Busisiwe', 'MNDZEBELE', 'PCH-2017-03', '2004-02-29', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (288, 'SIMELANE, Sibonelo Sotsha', 'Sibonelo Sotsha', 'SIMELANE', 'PCH-2017-04', '2002-08-09', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (289, 'THUSI, Sphesihle', 'Sphesihle', 'THUSI', 'PCH-2017-05', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (290, 'PHENYANE, Mpendulo', 'Mpendulo', 'PHENYANE', 'PCH-2017-06', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (291, 'TSABEDZE, Nontobeko Nkosiyazi', 'Nontobeko Nkosiyazi', 'TSABEDZE', 'PCH-2017-07', '2002-07-31', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (292, 'MATSENJWA, Vuyiswa Vusiwe', 'Vuyiswa Vusiwe', 'MATSENJWA', 'PCH-2017-08', '1999-02-08', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (293, 'MNISI, Nikiwe Sizakele', 'Nikiwe Sizakele', 'MNISI', 'PCH-2017-09', '1995-06-01', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (294, 'TSABEDZE, Muzi Madala', 'Muzi Madala', 'TSABEDZE', 'PCH-2017-10', '1997-12-12', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (295, 'BHEMBE, Colani', 'Colani', 'BHEMBE', 'FHS-2017-01', '1994-05-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (296, 'DLAMINI, Babhekile', 'Babhekile', 'DLAMINI', 'FHS-2017-02', '2003-01-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (297, 'DLAMINI, Noxolo', 'Noxolo', 'DLAMINI', 'FHS-2017-03', '2003-03-22', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (298, 'DLAMINI, Phephisa', 'Phephisa', 'DLAMINI', 'FHS-2017-04', '2002-04-18', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (299, 'DLAMINI, Sakhamuzi', 'Sakhamuzi', 'DLAMINI', 'FHS-2017-05', '2002-03-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (300, 'DLAMINI, Siphosethu Sandile', 'Siphosethu Sandile', 'DLAMINI', 'FHS-2017-06', '2003-12-05', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (301, 'MAMBA, Temnotfo', 'Temnotfo', 'MAMBA', 'FHS-2017-07', '2004-05-18', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (302, 'MASILELA, Thandolwethu Lerato', 'Thandolwethu Lerato', 'MASILELA', 'FHS-2017-08', '2003-09-23', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (303, 'MDLULI, Lindo', 'Lindo', 'MDLULI', 'FHS-2017-09', '1998-11-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (304, 'MNISI, Temvelo Noxolo', 'Temvelo Noxolo', 'MNISI', 'FHS-2017-10', '2004-06-23', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (305, 'METSETFWA, Zinhle', 'Zinhle', 'METSETFWA', 'FHS-2017-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (306, 'NDWANDWE, Lindokuhle Kukhanya', 'Lindokuhle Kukhanya', 'NDWANDWE', 'FHS-2017-12', '2003-05-01', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (307, 'NXUMALO, Ndlelenhile', 'Ndlelenhile', 'NXUMALO', 'FHS-2017-13', '2003-10-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (308, 'NYONI, Machawe John', 'Machawe John', 'NYONI', 'FHS-2017-14', '1999-10-21', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (309, 'SHIBA, Sebenzile Regina', 'Sebenzile Regina', 'SHIBA', 'FHS-2017-15', '2002-03-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (310, 'SHIBA, Veli Vukani', 'Veli Vukani', 'SHIBA', 'FHS-2017-16', '2002-06-14', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (311, 'TSABEDZE, Siphesihle', 'Siphesihle', 'TSABEDZE', 'FHS-2017-17', '2002-11-12', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (312, 'TSABEDZE, Temalindza', 'Temalindza', 'TSABEDZE', 'FHS-2017-18', '2003-05-01', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (313, 'DLADLA, Nonsikelelo', 'Nonsikelelo', 'DLADLA', 'FHS-2017-19', '2001-01-07', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (314, 'DLAMINI, Charles Ayanda', 'Charles Ayanda', 'DLAMINI', 'FHS-2017-20', '2003-03-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (315, 'DLAMINI, Ncedo Sandile', 'Ncedo Sandile', 'DLAMINI', 'FHS-2017-21', '2001-02-05', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (316, 'LUPHONDVO, Oscar Thembisa', 'Oscar Thembisa', 'LUPHONDVO', 'FHS-2017-22', '2001-10-10', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (317, 'MASEKO, Lomathemba Nokuphila', 'Lomathemba Nokuphila', 'MASEKO', 'FHS-2017-23', '2000-12-13', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (318, 'MOTSA, Mthakozisi Ayanda', 'Mthakozisi Ayanda', 'MOTSA', 'FHS-2017-24', '2002-12-24', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (319, 'MASEKO, Makhosazane', 'Makhosazane', 'MASEKO', 'FHS-2017-25', '2000-09-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (320, 'MNISI, Sibusiso Clement', 'Sibusiso Clement', 'MNISI', 'FHS-2017-26', '1997-07-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (321, 'DLAMINI, Linda Calvin', 'Linda Calvin', 'DLAMINI', 'FHS-2017-27', '1997-06-30', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (322, 'KHUMALO, Sipho Mfanukhona', 'Sipho Mfanukhona', 'KHUMALO', 'FHS-2017-28', '1998-05-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (323, 'DLAMINI, Lindiwe Xolile', 'Lindiwe Xolile', 'DLAMINI', 'FHS-2017-29', '1981-06-06', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (324, 'DLAMINI, Mangaliso Thabiso', 'Mangaliso Thabiso', 'DLAMINI', 'FHS-2017-30', '1997-07-27', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (325, 'NTSINI, Simanga Simphiwe', 'Simanga Simphiwe', 'NTSINI', 'FHS-2017-31', '1995-09-09', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (326, 'TSABEDZE, Bagezile Zinhle', 'Bagezile Zinhle', 'TSABEDZE', 'FHS-2017-32', '1998-09-23', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (327, 'MATSEBULA, Jabuline', 'Jabuline', 'MATSEBULA', 'FHS-2017-33', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (330, 'BHEMBE, Ngabisa', 'Ngabisa', 'BHEMBE', 'PCH-2017-11', '2000-04-24', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (331, 'MTHEMBU, Thembelihle Thabile', 'Thembelihle Thabile', 'MTHEMBU', 'FHS-2017-34', '2001-03-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (332, 'DLAMINI, Siphilile Promise', 'Siphilile Promise', 'DLAMINI', 'PCH-2017-12', '2000-04-22', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (333, 'DLAMINI, Ndimphiwe Sphiwangaye', 'Ndimphiwe Sphiwangaye', 'DLAMINI', 'FHS-2017-35', '1999-03-04', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (334, 'MTHEMBU, Thembelihle', 'Thembelihle', 'MTHEMBU', 'FHS-2017-36', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (335, 'SILOMBO, Nothando', 'Nothando', 'SILOMBO', 'PCH-2017-13', '2003-04-08', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (336, 'SIMELANE, Samkelo', 'Samkelo', 'SIMELANE', 'PCH-2017-14', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (337, 'MNDZEBELE, Lethu', 'Lethu', 'MNDZEBELE', 'FHS-2017-37', '2004-02-29', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (338, 'MTHEMBU, Thembelihle', 'Thembelihle', 'MTHEMBU', 'FHS-2017-38', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (339, 'XX, fasdf', 'fasdf', 'XX', 'FHS-2018-01', 'F', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (340, 'NYAMANE, LIindokuhle', 'LIindokuhle', 'NYAMANE', 'FHS-2018-02', '2001-02-14', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (341, 'DLAMINI, Fakazile', 'Fakazile', 'DLAMINI', 'EHS-2018-01', '2004-09-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (342, 'DLAMINI, Jabulani', 'Jabulani', 'DLAMINI', 'EHS-2018-02', '2004-04-24', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (343, 'DLAMINI, Mzwandile', 'Mzwandile', 'DLAMINI', 'EHS-2018-03', '2001-04-05', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (344, 'DLAMINI, Temalangeni', 'Temalangeni', 'DLAMINI', 'EHS-2018-04', '2004-04-24', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (345, 'MADUNA, Ntuku', 'Ntuku', 'MADUNA', 'EHS-2018-05', '2001-10-13', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (346, 'MHLANGA, Zethu', 'Zethu', 'MHLANGA', 'EHS-2018-06', '2000-05-29', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (347, 'MKHONTFO, Nomvula', 'Nomvula', 'MKHONTFO', 'EHS-2018-07', '2001-02-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (348, 'MVUBU, Thabiso', 'Thabiso', 'MVUBU', 'EHS-2018-08', '2004-08-09', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (349, 'SHIBA, Mbali', 'Mbali', 'SHIBA', 'EHS-2018-09', '2005-02-14', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (350, 'DLAMINI, Hlengiwe', 'Hlengiwe', 'DLAMINI', 'FHS-2018-03', '2002-02-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (351, 'DLAMINI, Nonduduzo', 'Nonduduzo', 'DLAMINI', 'FHS-2018-04', '2004-11-24', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (352, 'DLAMINI, Samkeliso', 'Samkeliso', 'DLAMINI', 'FHS-2018-05', '1998-10-28', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (353, 'KHUMALO, Mangaliso', 'Mangaliso', 'KHUMALO', 'FHS-2018-06', '2003-08-13', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (354, 'MABUSO, Sincobile', 'Sincobile', 'MABUSO', 'FHS-2018-07', '2002-05-23', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (355, 'MASILELA, Sebenzile', 'Sebenzile', 'MASILELA', 'FHS-2018-08', '2003-01-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (356, 'MKHONTFO, Bagcinile', 'Bagcinile', 'MKHONTFO', 'FHS-2018-09', '2002-11-29', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (357, 'MNCINA, Phephile', 'Phephile', 'MNCINA', 'FHS-2018-10', '2005-09-01', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (358, 'MPANDZA, Thandeka', 'Thandeka', 'MPANDZA', 'FHS-2018-11', '2002-07-31', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (359, 'NDLOVU, Mduduzi', 'Mduduzi', 'NDLOVU', 'FHS-2018-12', '2003-10-20', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (360, 'NKHAMBULE, Lindani', 'Lindani', 'NKHAMBULE', 'FHS-2018-13', '2000-08-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (361, 'NYAMANE, Lindokuhle', 'Lindokuhle', 'NYAMANE', 'FHS-2018-14', '2001-02-14', 'M', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (362, 'NYAMANE, Lungile', 'Lungile', 'NYAMANE', 'FHS-2018-15', '1998-04-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (363, 'VILAKATI, Ncedo', 'Ncedo', 'VILAKATI', 'FHS-2018-16', '2003-03-14', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (364, 'VILAKATI, Nok''thula', 'Nok''thula', 'VILAKATI', 'FHS-2018-17', '2004-02-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (365, 'ZULU, Cedusizi', 'Cedusizi', 'ZULU', 'FHS-2018-18', '1998-02-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (366, 'DLAMINI, Gcina', 'Gcina', 'DLAMINI', 'PCH-2018-01', '2003-01-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (367, 'DLAMINI, Lwazi', 'Lwazi', 'DLAMINI', 'PCH-2018-02', '1999-09-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (368, 'KUNENE, Mayibongwe', 'Mayibongwe', 'KUNENE', 'PCH-2018-03', '2001-08-18', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (369, 'DLAMINI, Sifiso', 'Sifiso', 'DLAMINI', 'PCH-2018-04', '2002-01-29', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (370, 'LANGA, Thandolwethu', 'Thandolwethu', 'LANGA', 'PCH-2018-05', '2004-08-03', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (371, 'MAKAMA, Nkhululeko', 'Nkhululeko', 'MAKAMA', 'PCH-2018-06', '2004-09-20', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (372, 'MAKAMA, Ray', 'Ray', 'MAKAMA', 'PCH-2018-07', '2002-03-18', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (373, 'MASEKO, Melusi', 'Melusi', 'MASEKO', 'PCH-2018-08', '2003-04-02', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (374, 'MAVUSO, Nosipho', 'Nosipho', 'MAVUSO', 'PCH-2018-09', '2004-11-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (375, 'MAZIYA, Mancoba', 'Mancoba', 'MAZIYA', 'PCH-2018-10', '2003-02-23', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (376, 'MSITSINI, Sihlelelwe', 'Sihlelelwe', 'MSITSINI', 'PCH-2018-11', '2002-06-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (377, 'MWALI, Tengetile', 'Tengetile', 'MWALI', 'PCH-2018-12', '2005-03-07', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (378, 'NHLABATSI, Lindokuhle', 'Lindokuhle', 'NHLABATSI', 'PCH-2018-13', '2005-09-05', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (379, 'ZULU, Penuel', 'Penuel', 'ZULU', 'PCH-2018-14', '2001-09-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (380, 'CHIBI, Thandolwethu', 'Thandolwethu', 'CHIBI', 'FHS-2019-01', 'F', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (381, 'CHIRWA, Lindelwa', 'Lindelwa', 'CHIRWA', 'FHS-2019-02', '2000-02-20', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (382, 'DLADLA, Lindani', 'Lindani', 'DLADLA', 'FHS-2019-03', '2003-07-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (383, 'DLAMINI, Ayanda', 'Ayanda', 'DLAMINI', 'EHS-2019-01', '2003-05-17', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (384, 'DLAMINI, Babongele', 'Babongele', 'DLAMINI', 'EHS-2019-02', '2001-07-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (385, 'DLAMINI, Hlobsile', 'Hlobsile', 'DLAMINI', 'PCH-2019-01', '2003-06-22', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (386, 'DLAMINI, Mbali H', 'Mbali H', 'DLAMINI', 'FHS-2019-04', '2003-09-28', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (387, 'DLAMINI, Mbali N', 'Mbali N', 'DLAMINI', 'FHS-2019-05', '2005-12-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (388, 'DLAMINI, Melusi', 'Melusi', 'DLAMINI', 'PCH-2019-02', '2004-05-28', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (389, 'DLAMINI, Menelisi', 'Menelisi', 'DLAMINI', 'FHS-2019-06', '2001-02-26', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (390, 'DLAMINI, Mpendulo', 'Mpendulo', 'DLAMINI', 'EHS-2019-03', '2005-01-10', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (391, 'DLAMINI, Nokwanda', 'Nokwanda', 'DLAMINI', 'EHS-2019-04', '2003-03-09', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (392, 'DLAMINI, Nolwazi', 'Nolwazi', 'DLAMINI', 'EHS-2019-05', '2003-08-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (393, 'DLAMINI, Nosipho', 'Nosipho', 'DLAMINI', 'PCH-2019-03', '2001-07-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (394, 'DLAMINI, Phephisa', 'Phephisa', 'DLAMINI', 'FHS-2019-07', '2002-04-18', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (395, 'DLAMINI, Phetsile', 'Phetsile', 'DLAMINI', 'FHS-2019-08', '2001-02-09', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (396, 'DLAMINI, Sanele', 'Sanele', 'DLAMINI', 'EHS-2019-06', '2005-01-02', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (397, 'DLAMINI, Simlindile', 'Simlindile', 'DLAMINI', 'EHS-2019-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (398, 'DLAMINI, Zanele', 'Zanele', 'DLAMINI', 'FHS-2019-09', '2006-06-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (399, 'FAKUDZE, Sibonelo', 'Sibonelo', 'FAKUDZE', 'EHS-2019-08', '2003-06-22', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (400, 'GAMA, Luyanda', 'Luyanda', 'GAMA', 'FHS-2019-10', '2005-06-04', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (401, 'GAMA, Sinethemba', 'Sinethemba', 'GAMA', 'PCH-2019-04', '2002-06-15', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (402, 'GAMA, Thando', 'Thando', 'GAMA', 'PCH-2019-05', '2003-07-23', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (403, 'JOZINI, Mduduzi', 'Mduduzi', 'JOZINI', 'PCH-2019-06', '2002-04-24', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (404, 'KHUMALO, Gugulethu', 'Gugulethu', 'KHUMALO', 'EHS-2019-09', '2002-08-29', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (405, 'KHUMALO, Mzwandile', 'Mzwandile', 'KHUMALO', 'EHS-2019-10', '2004-05-10', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (406, 'KHUMALO, Nkhosingiphile', 'Nkhosingiphile', 'KHUMALO', 'EHS-2019-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (407, 'MAGAGULA, Sifiso', 'Sifiso', 'MAGAGULA', 'FHS-2019-11', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (408, 'MAGAYE, Ncobile', 'Ncobile', 'MAGAYE', 'PCH-2019-07', '2002-03-14', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (409, 'MAKHANYA, Nokuphila', 'Nokuphila', 'MAKHANYA', 'PCH-2019-08', '2003-07-20', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (410, 'MAMBA, Kwenzile', 'Kwenzile', 'MAMBA', 'FHS-2019-12', '1997-10-04', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (411, 'MAMBA, Nomvuyo', 'Nomvuyo', 'MAMBA', 'EHS-2019-12', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (412, 'MAMBA, Swazi', 'Swazi', 'MAMBA', 'FHS-2019-13', '1999-08-15', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (413, 'MAPHANGA, Bongiwe', 'Bongiwe', 'MAPHANGA', 'FHS-2019-14', '2003-05-17', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (414, 'MASEKO, Bandile', 'Bandile', 'MASEKO', 'FHS-2019-15', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (415, 'MASEKO, Ngcebo', 'Ngcebo', 'MASEKO', 'FHS-2019-16', '2004-09-26', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (416, 'MASEKO, Sibusiso', 'Sibusiso', 'MASEKO', 'EHS-2019-13', '2002-07-12', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (417, 'MASHUMI, Ntombikayise', 'Ntombikayise', 'MASHUMI', 'FHS-2019-17', '2001-12-08', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (418, 'MASILELA, Nokwethu', 'Nokwethu', 'MASILELA', 'EHS-2019-14', '2006-01-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (419, 'MASUKU, Mcolisi', 'Mcolisi', 'MASUKU', 'FHS-2019-18', '2000-05-25', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (420, 'MASUKU, Nolwazi', 'Nolwazi', 'MASUKU', 'EHS-2019-15', '2006-03-06', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (421, 'MAZIYA, Mancoba', 'Mancoba', 'MAZIYA', 'EHS-2019-16', '2003-02-14', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (422, 'MHLANGA, Senteko', 'Senteko', 'MHLANGA', 'FHS-2019-19', '2005-05-30', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (423, 'MKHABELA, Philani', 'Philani', 'MKHABELA', 'FHS-2019-20', '2004-07-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (424, 'MKHONTA, Philile', 'Philile', 'MKHONTA', 'PCH-2019-09', '2005-03-25', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (425, 'MKHONTA, Silindile', 'Silindile', 'MKHONTA', 'EHS-2019-17', '2005-07-05', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (426, 'MNCINA, Buhle', 'Buhle', 'MNCINA', 'PCH-2019-10', '2004-03-31', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (427, 'MNCINA, Celimphile', 'Celimphile', 'MNCINA', 'FHS-2019-21', '2003-08-28', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (428, 'MNCINA, Kwanele (Banele)', 'Kwanele (Banele)', 'MNCINA', 'FHS-2019-22', '2004-11-23', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (429, 'MNGUNI, Nothando', 'Nothando', 'MNGUNI', 'EHS-2019-18', '2004-07-27', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (430, 'MNISI, Njabulo', 'Njabulo', 'MNISI', 'FHS-2019-23', '2002-02-26', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (431, 'MNISI, Silindile', 'Silindile', 'MNISI', 'EHS-2019-19', '1999-12-25', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (432, 'MOTSA, Nontsetselelo', 'Nontsetselelo', 'MOTSA', 'FHS-2019-24', '2004-09-02', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (433, 'MOTSA, Sandile', 'Sandile', 'MOTSA', 'EHS-2019-20', '2003-09-26', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (434, 'NHLABATSI, Yanele', 'Yanele', 'NHLABATSI', 'FHS-2019-25', '2005-11-02', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (435, 'NXUMALO, Lindelwa', 'Lindelwa', 'NXUMALO', 'EHS-2019-21', '2004-05-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (436, 'SHABANGU, Nokwanda', 'Nokwanda', 'SHABANGU', 'FHS-2019-26', '2003-04-26', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (437, 'SHABANGU, Siphiwokuhle', 'Siphiwokuhle', 'SHABANGU', 'EHS-2019-22', '2004-09-25', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (438, 'SHONGWE, Lusito', 'Lusito', 'SHONGWE', 'PCH-2019-11', '2005-11-25', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (439, 'SIKHONDZE, Nomvuyo', 'Nomvuyo', 'SIKHONDZE', 'PCH-2019-12', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (440, 'TFWALA, Siphetfo', 'Siphetfo', 'TFWALA', 'EHS-2019-23', '2005-02-25', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (441, 'VILAKATI, Khayalethu', 'Khayalethu', 'VILAKATI', 'EHS-2019-24', '2004-04-03', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (442, 'ZONDI, Nokwanda', 'Nokwanda', 'ZONDI', 'PCH-2019-13', 'F', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (443, 'MHLANGA, Nonsilelelo', 'Nonsilelelo', 'MHLANGA', 'FHS-2019-27', '2003-01-21', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (444, 'SHIBA, Hopewell', 'Hopewell', 'SHIBA', 'PCH-2019-14', '2002-11-29', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (445, 'CHIBI, Thandolwethu', 'Thandolwethu', 'CHIBI', 'FHS-2019-28', '2005-06-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (446, 'MTFUPHA, Luyanda ', 'Luyanda ', 'MTFUPHA', 'PCH-2021-01', '2007-11-14', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (447, 'DLAMINI, Dumsile', 'Dumsile', 'DLAMINI', 'EHS-2021-01', '2001-01-16', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (448, 'DLAMINI, Gift', 'Gift', 'DLAMINI', 'EHS-2021-02', '2006-08-18', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (449, 'DLAMINI, Mbongiseni', 'Mbongiseni', 'DLAMINI', 'EHS-2021-03', '2004-07-20', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (450, 'DLAMINI, Simphiwe', 'Simphiwe', 'DLAMINI', 'EHS-2021-04', '2004-11-04', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (451, 'HLETA, Mathokoza', 'Mathokoza', 'HLETA', 'EHS-2021-05', '2004-11-04', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (452, 'HLOPHE, Lomavi', 'Lomavi', 'HLOPHE', 'EHS-2021-06', '2005-01-16', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (453, 'LUKHELE, Nomfundo', 'Nomfundo', 'LUKHELE', 'EHS-2021-07', '2006-09-06', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (454, 'MABUZA, Sinethemba', 'Sinethemba', 'MABUZA', 'EHS-2021-08', '2006-01-06', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (455, 'MAGAGULA, Tebesutfu', 'Tebesutfu', 'MAGAGULA', 'EHS-2021-09', '2007-10-22', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (456, 'MAMBA, Gcinwayinkhosi', 'Gcinwayinkhosi', 'MAMBA', 'EHS-2021-10', '2006-12-19', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (457, 'MAMBA, Siphosethu', 'Siphosethu', 'MAMBA', 'EHS-2021-11', '2004-04-04', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (458, 'MASUKU, Nkhosiyothando', 'Nkhosiyothando', 'MASUKU', 'EHS-2021-12', '2007-04-04', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (459, 'MATSEBULA, Siphiwokuhle', 'Siphiwokuhle', 'MATSEBULA', 'EHS-2021-13', '2006-08-17', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (460, 'MAVIMBELA, Banele', 'Banele', 'MAVIMBELA', 'EHS-2021-14', '2005-11-07', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (461, 'MAYISELA, Lawrence', 'Lawrence', 'MAYISELA', 'EHS-2021-15', '2002-06-05', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (462, 'MAYISELA, Thembinkhosi', 'Thembinkhosi', 'MAYISELA', 'EHS-2021-16', '2003-01-08', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (463, 'MAZIBUKO, Ncediswa', 'Ncediswa', 'MAZIBUKO', 'EHS-2021-17', '2006-06-24', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (464, 'METFULA, Bonkhe', 'Bonkhe', 'METFULA', 'EHS-2021-18', '2006-01-12', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (465, 'MHLANGA, Tenkhaba', 'Tenkhaba', 'MHLANGA', 'EHS-2021-19', '2003-12-29', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (466, 'MKHONTFO, Nonhlanhla', 'Nonhlanhla', 'MKHONTFO', 'EHS-2021-20', '2003-09-28', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (467, 'MNCINA, Bongiswa', 'Bongiswa', 'MNCINA', 'EHS-2021-21', '2007-10-01', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (468, 'MNCINA, Mfanawenkhosi', 'Mfanawenkhosi', 'MNCINA', 'EHS-2021-22', '2002-06-05', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (469, 'MNCINA, Siphetfo', 'Siphetfo', 'MNCINA', 'EHS-2021-23', '2004-12-01', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (470, 'MNCINA, Zandile', 'Zandile', 'MNCINA', 'EHS-2021-24', '2003-12-24', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (471, 'MNISI, Mzwanele', 'Mzwanele', 'MNISI', 'EHS-2021-25', '2002-10-09', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (472, 'MNISI, Ngcebo', 'Ngcebo', 'MNISI', 'EHS-2021-26', '2004-06-21', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (473, 'MSIBI, Nomvula', 'Nomvula', 'MSIBI', 'EHS-2021-27', '2005-11-20', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (474, 'MNISI, Samkelo', 'Samkelo', 'MNISI', 'EHS-2021-28', '2001-11-23', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (475, 'SHIBA, Sinethemba', 'Sinethemba', 'SHIBA', 'EHS-2021-29', '2006-06-04', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (476, 'SIKHOSANA, Lihle', 'Lihle', 'SIKHOSANA', 'EHS-2021-30', '2005-03-11', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (477, 'SIKHOSANA, Nkhosingiphile', 'Nkhosingiphile', 'SIKHOSANA', 'EHS-2021-31', '2003-06-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (478, 'SIKHOSANA, Phiwokwakhe', 'Phiwokwakhe', 'SIKHOSANA', 'EHS-2021-32', '2002-12-13', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (479, 'SITHOLE, Mkhuleko', 'Mkhuleko', 'SITHOLE', 'EHS-2021-33', '2004-03-30', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (480, 'TFWALA, Siphetfo', 'Siphetfo', 'TFWALA', 'EHS-2021-34', 'M', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (481, 'TSABEDZE, Phetsile', 'Phetsile', 'TSABEDZE', 'EHS-2021-35', '2005-05-02', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (482, 'VILAKATI, Khayalethu', 'Khayalethu', 'VILAKATI', 'EHS-2021-36', 'M', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (483, 'ZULU, Temvelo', 'Temvelo', 'ZULU', 'EHS-2021-37', '2003-10-23', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (484, 'EHANDA, Thembalethu', 'Thembalethu', 'EHANDA', 'PCH-2021-02', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (485, 'CHIRWA, Nomfundo', 'Nomfundo', 'CHIRWA', 'PCH-2021-03', '1996-02-16', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (486, 'DLADLA, Siphosethu', 'Siphosethu', 'DLADLA', 'PCH-2021-04', '2006-01-07', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (487, 'DLAMINI, Mandisa', 'Mandisa', 'DLAMINI', 'PCH-2021-05', '2006-08-03', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (488, 'DLAMINI, Mlamleli', 'Mlamleli', 'DLAMINI', 'PCH-2021-06', '2005-03-23', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (489, 'DLAMINI, Nosisa', 'Nosisa', 'DLAMINI', 'PCH-2021-07', '2006-07-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (490, 'DLAMINI, Sihle', 'Sihle', 'DLAMINI', 'PCH-2021-08', '2006-09-12', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (491, 'LUBISI, Amina', 'Amina', 'LUBISI', 'PCH-2021-09', '2005-12-07', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (492, 'LUBISI, Temndeni', 'Temndeni', 'LUBISI', 'PCH-2021-10', '2004-08-07', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (493, 'MAGONGO, Sonkhe', 'Sonkhe', 'MAGONGO', 'PCH-2021-11', '1999-03-15', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (494, 'MANGWE, Musi', 'Musi', 'MANGWE', 'PCH-2021-12', '2003-09-27', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (495, 'MANGWE, Simile', 'Simile', 'MANGWE', 'PCH-2021-13', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (496, 'MASEKO, Simphiwe', 'Simphiwe', 'MASEKO', 'PCH-2021-14', '2003-10-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (497, 'MASEKO, Siyabonga', 'Siyabonga', 'MASEKO', 'PCH-2021-15', '2004-04-05', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (498, 'MASIMULA, Mafelelo', 'Mafelelo', 'MASIMULA', 'PCH-2021-16', '2008-05-23', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (499, 'MASIMULA, Siphesihle', 'Siphesihle', 'MASIMULA', 'PCH-2021-17', '2006-11-03', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (500, 'MASINGA, Linda', 'Linda', 'MASINGA', 'PCH-2021-18', '2001-01-26', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (501, 'MATSEBULA, Samkelisiwe', 'Samkelisiwe', 'MATSEBULA', 'PCH-2021-19', '2006-03-06', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (502, 'MAVUSO, Sibonelo', 'Sibonelo', 'MAVUSO', 'PCH-2021-20', '2000-07-03', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (503, 'MAZIYA, Mgcinisive', 'Mgcinisive', 'MAZIYA', 'PCH-2021-21', '2006-02-25', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (504, 'MNCINA, Mbuso', 'Mbuso', 'MNCINA', 'PCH-2021-22', '2005-07-07', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (505, 'MNCINA, Njabuliso', 'Njabuliso', 'MNCINA', 'PCH-2021-23', '2005-08-10', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (506, 'NTANDANE, Khethukuthula', 'Khethukuthula', 'NTANDANE', 'PCH-2021-24', '2005-08-07', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (507, 'SHABANGU, Celumusa', 'Celumusa', 'SHABANGU', 'PCH-2021-25', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (508, 'SHABANGU, Nkhosenhle', 'Nkhosenhle', 'SHABANGU', 'PCH-2021-26', '2006-05-20', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (509, 'SHABANGU, Nkhosingiphile', 'Nkhosingiphile', 'SHABANGU', 'PCH-2021-27', '2002-10-29', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (510, 'SIWELA, Amahle', 'Amahle', 'SIWELA', 'PCH-2021-28', '2006-12-04', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (511, 'THEMBA, Ayanda', 'Ayanda', 'THEMBA', 'PCH-2021-29', '2005-12-11', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (512, 'TSABEDZE, Thembisile', 'Thembisile', 'TSABEDZE', 'PCH-2021-30', '2004-03-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (513, 'VILAKATI, Balungile', 'Balungile', 'VILAKATI', 'PCH-2021-31', '2005-12-24', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (514, 'ZWANE, Phumlane', 'Phumlane', 'ZWANE', 'PCH-2021-32', '2007-01-05', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (515, 'DLAMINI, Menelisi', 'Menelisi', 'DLAMINI', 'FHS-2021-01', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (516, 'DLAMINI, Nel''siwe', 'Nel''siwe', 'DLAMINI', 'FHS-2021-02', '2004-11-19', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (517, 'DLAMINI, Sihleliso', 'Sihleliso', 'DLAMINI', 'FHS-2021-03', '2004-02-28', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (518, 'DLAMINI, Temcwasho', 'Temcwasho', 'DLAMINI', 'FHS-2021-04', '2005-02-05', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (519, 'GAMA, Samuel', 'Samuel', 'GAMA', 'FHS-2021-05', '2003-07-02', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (520, 'KHUMALO, Philiswe', 'Philiswe', 'KHUMALO', 'FHS-2021-06', '2007-03-26', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (521, 'MATSEBULA, Bagezile', 'Bagezile', 'MATSEBULA', 'FHS-2021-07', '2005-05-17', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (522, 'MHLANGA, Thando', 'Thando', 'MHLANGA', 'FHS-2021-08', '2002-05-25', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (523, 'MNCINA, Bongani', 'Bongani', 'MNCINA', 'FHS-2021-09', '2005-11-30', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (524, 'NHLENGETFWA, Mehluko', 'Mehluko', 'NHLENGETFWA', 'FHS-2021-10', '2003-04-07', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (525, 'NKAMBULE, Mthokozisi', 'Mthokozisi', 'NKAMBULE', 'FHS-2021-11', '2005-12-23', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (526, 'ZWANE, Nothando', 'Nothando', 'ZWANE', 'FHS-2021-12', '2004-07-19', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (527, 'BANDA, Thembalethu', 'Thembalethu', 'BANDA', 'PCH-2021-33', '2007-06-20', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (530, 'MAHLALELA, Nonhlandla', 'Nonhlandla', 'MAHLALELA', 'FHS-2021-13', '2005-12-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (531, 'MNCINA, Nonjabuliso', 'Nonjabuliso', 'MNCINA', 'EHS-2021-38', '2005-04-19', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (532, 'SIMELANE, Sanelisiwe', 'Sanelisiwe', 'SIMELANE', 'EHS-2021-39', '2006-05-04', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (533, 'MASEKO, Nomthantazo', 'Nomthantazo', 'MASEKO', 'EHS-2021-40', '2004-08-29', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (534, 'DLAMINI, Nandipha', 'Nandipha', 'DLAMINI', 'FHS-2022-01', '2007-06-25', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (535, 'GAMA, Siwakhile', 'Siwakhile', 'GAMA', 'EHS-2022-01', '2009-03-22', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (536, 'MAMBA, Sinethemba', 'Sinethemba', 'MAMBA', 'EHS-2022-02', '2008-04-25', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (537, 'MASEKO, Machawe', 'Machawe', 'MASEKO', 'EHS-2022-03', '2005-09-19', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (538, 'MASUKU, Surprise', 'Surprise', 'MASUKU', 'EHS-2022-04', '2008-03-03', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (539, 'MATSEBULA, Lindokuhle', 'Lindokuhle', 'MATSEBULA', 'EHS-2022-05', '2002-03-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (540, 'MAZIBUKO, Lindelo', 'Lindelo', 'MAZIBUKO', 'EHS-2022-06', '2005-11-25', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (541, 'MDLULI, Siibonelo', 'Siibonelo', 'MDLULI', 'EHS-2022-07', '2006-01-29', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (542, 'MNCINA, Sethu', 'Sethu', 'MNCINA', 'EHS-2022-08', '2007-06-20', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (543, 'MNCINA, Thobekile', 'Thobekile', 'MNCINA', 'EHS-2022-09', '2007-11-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (544, 'MNCINA, Uyanda', 'Uyanda', 'MNCINA', 'EHS-2022-10', '2007-10-10', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (545, 'MNISI, Samnkeliso', 'Samnkeliso', 'MNISI', 'EHS-2022-11', '2009-05-01', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (546, 'MOTSA, Nkosikhona', 'Nkosikhona', 'MOTSA', 'EHS-2022-12', '2007-07-01', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (547, 'MOTSA, Sicelimphilo', 'Sicelimphilo', 'MOTSA', 'EHS-2022-13', '2009-02-18', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (548, 'NYAMANE, Bagezile', 'Bagezile', 'NYAMANE', 'EHS-2022-14', '2009-04-22', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (549, 'SHIBA, Gcina', 'Gcina', 'SHIBA', 'EHS-2022-15', '2008-02-15', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (550, 'SHIBA, Mlimi', 'Mlimi', 'SHIBA', 'EHS-2022-16', '2008-03-07', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (551, 'SITHOLE, Thembelihle', 'Thembelihle', 'SITHOLE', 'EHS-2022-17', '2007-01-15', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (552, 'VILAKATI, Angel', 'Angel', 'VILAKATI', 'EHS-2022-18', '2007-10-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (553, 'ZUNGU, Nondumiso', 'Nondumiso', 'ZUNGU', 'EHS-2022-19', '2001-07-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (554, 'MATSEBULA, Temthandazo', 'Temthandazo', 'MATSEBULA', 'EHS-2022-20', '2004-08-15', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (555, 'DLAMINI, Ciniso', 'Ciniso', 'DLAMINI', 'PCH-2022-01', '2004-08-28', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (556, 'GAMEDZE, Silulinge', 'Silulinge', 'GAMEDZE', 'PCH-2022-02', '2001-06-03', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (557, 'GUMEDZE, Thobani', 'Thobani', 'GUMEDZE', 'PCH-2022-03', '2003-07-29', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (558, 'MAVUSO, Wenziwe', 'Wenziwe', 'MAVUSO', 'PCH-2022-04', '2009-01-17', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (559, 'MKHONTO, Thubalethu', 'Thubalethu', 'MKHONTO', 'PCH-2022-05', '2007-06-28', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (560, 'NKHAMBULE, Tengetile', 'Tengetile', 'NKHAMBULE', 'PCH-2022-06', '2006-11-15', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (561, 'SHONGWE, Thaphelo', 'Thaphelo', 'SHONGWE', 'PCH-2022-07', '2006-08-08', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (562, 'LUKHELE, Sonkhe', 'Sonkhe', 'LUKHELE', 'PCH-2022-08', '2008-03-16', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (563, 'MALINGA, Sanelisiwe', 'Sanelisiwe', 'MALINGA', 'PCH-2022-09', '2007-10-16', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (564, 'MNISI, Nokukhanya', 'Nokukhanya', 'MNISI', 'PCH-2022-10', '2007-11-30', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (565, 'DLAMINI, Nombuso', 'Nombuso', 'DLAMINI', 'PCH-2022-11', '2002-07-21', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (566, 'MASEKO, Zandile', 'Zandile', 'MASEKO', 'PCH-2022-12', '1998-08-14', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (567, 'MAVIMBELA, Tandzile', 'Tandzile', 'MAVIMBELA', 'PCH-2022-13', '2003-03-31', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (568, 'THWALA, Khonzinkosi', 'Khonzinkosi', 'THWALA', 'PCH-2022-14', '1999-08-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (569, 'MAGAGULA, Sibhekokuhle', 'Sibhekokuhle', 'MAGAGULA', 'FHS-2022-02', '2009-03-27', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (570, 'MASEKO, Nosimilo', 'Nosimilo', 'MASEKO', 'FHS-2022-03', '2007-06-30', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (571, 'MNISI, Andiswa', 'Andiswa', 'MNISI', 'FHS-2022-04', '2007-01-17', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (572, 'MNCINA, Lwazi', 'Lwazi', 'MNCINA', 'FHS-2022-05', '2002-01-25', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (573, 'MSIBI, Siphosethu', 'Siphosethu', 'MSIBI', 'FHS-2022-06', '2004-01-12', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (574, 'MSIBI, Vuyiswa', 'Vuyiswa', 'MSIBI', 'FHS-2022-07', '2005-12-27', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (575, 'ABOUBAKER, Ishmael', 'Ishmael', 'ABOUBAKER', 'EUK-2022-01', '2008-10-09', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (576, 'MAGAGULA, Phathokuhle', 'Phathokuhle', 'MAGAGULA', 'EUK-2022-02', '2006-10-03', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (577, 'MAGAGULA, Wonder', 'Wonder', 'MAGAGULA', 'EUK-2022-03', '2006-08-03', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (578, 'MALINGA, Likhwa', 'Likhwa', 'MALINGA', 'EUK-2022-04', '2006-02-12', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (579, 'MASEKO, Musawenkhosi', 'Musawenkhosi', 'MASEKO', 'EUK-2022-05', '2009-08-31', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (580, 'MASEKO , Nkhosingiphile', 'Nkhosingiphile', 'MASEKO ', 'EUK-2022-06', '2008-07-19', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (581, 'MASEKO, Takhona', 'Takhona', 'MASEKO', 'EUK-2022-07', '2006-07-03', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (582, 'MAZIYA, Musawenkhosi', 'Musawenkhosi', 'MAZIYA', 'EUK-2022-08', '2007-07-02', 'M', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (583, 'MAZIYA, Snethemba', 'Snethemba', 'MAZIYA', 'EUK-2022-09', '2007-01-15', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (584, 'MNCINA, Bongumusa', 'Bongumusa', 'MNCINA', 'EUK-2022-10', '2007-03-04', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (585, 'MNCINA, Samson', 'Samson', 'MNCINA', 'EUK-2022-11', '2006-09-06', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (586, 'MNCINA, Seluleko', 'Seluleko', 'MNCINA', 'EUK-2022-12', '2008-04-04', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (587, 'NDWANDWE, Silungiselweyinkhosi', 'Silungiselweyinkhosi', 'NDWANDWE', 'EUK-2022-13', '2007-03-16', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (588, 'NDZIMA, Nhlanganiso', 'Nhlanganiso', 'NDZIMA', 'EUK-2022-14', '2006-04-10', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (589, 'SHABANGU, Mayibongwe', 'Mayibongwe', 'SHABANGU', 'EUK-2022-15', '2008-10-15', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (590, 'SHONGWE, Sinenhlanhla', 'Sinenhlanhla', 'SHONGWE', 'EUK-2022-16', '2009-11-03', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (591, 'TSABEDZE, Delisile', 'Delisile', 'TSABEDZE', 'EUK-2022-17', '2009-02-20', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (592, 'MNISI, Silungile', 'Silungile', 'MNISI', 'EUK-2022-18', '2006-12-08', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (593, 'ZWANE, Bongekile', 'Bongekile', 'ZWANE', 'EUK-2022-19', '2008-03-03', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (594, 'NDZIMANDZE, Banele', 'Banele', 'NDZIMANDZE', 'EUK-2022-20', '2006-11-06', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (595, 'NKWANYANA, Bagezile', 'Bagezile', 'NKWANYANA', 'EUK-2022-21', '2007-04-08', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (596, 'MAGAGULA, Sibhekokuhle', 'Sibhekokuhle', 'MAGAGULA', 'FHS-2022-08', '2009-03-27', 'M', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (597, 'MASEKO, Nosimilo', 'Nosimilo', 'MASEKO', 'FHS-2022-09', '2007-06-30', 'F', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (598, 'MNISI, Andiswa', 'Andiswa', 'MNISI', 'FHS-2022-10', '2007-01-17', 'M', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (599, 'MNCINA, Lwazi', 'Lwazi', 'MNCINA', 'FHS-2022-11', '2002-01-25', 'M', 'N', 'N', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (600, 'DLAMINI, Nkhosenhle', 'Nkhosenhle', 'DLAMINI', 'EHS-2022-21', '2006-10-10', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (601, 'NHLENGETFWA, Phinda', 'Phinda', 'NHLENGETFWA', 'FHS-2022-12', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (602, 'DLAMINI, Tiyandza', 'Tiyandza', 'DLAMINI', 'PCH-2022-15', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (603, 'MASEKO, Zandile', 'Zandile', 'MASEKO', 'PCH-2022-16', '1998-08-14', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (604, 'MASIMULA, Andiswa', 'Andiswa', 'MASIMULA', 'PCH-2022-17', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (605, 'MAVUSO, Andile', 'Andile', 'MAVUSO', 'PCH-2022-18', '2006-01-07', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (606, 'THEMBA, Lucia', 'Lucia', 'THEMBA', 'PCH-2022-19', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (607, 'DLAMINI, Lindiswa', 'Lindiswa', 'DLAMINI', 'EHS-2022-22', '2007-10-18', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (608, 'HLETA, Nhlanhla', 'Nhlanhla', 'HLETA', 'EHS-2022-23', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (609, 'MATSEBULA, Lungelo', 'Lungelo', 'MATSEBULA', 'EHS-2022-24', '2007-06-25', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (610, 'SIMELANE, Owethu', 'Owethu', 'SIMELANE', 'EHS-2022-25', '2006-09-01', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (611, 'MAZIBUKO, Mcolisi', 'Mcolisi', 'MAZIBUKO', 'EHS-2022-26', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (612, 'MDLULI, Nosibonelo', 'Nosibonelo', 'MDLULI', 'EHS-2022-27', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (613, 'GAMEDZE, Slungile', 'Slungile', 'GAMEDZE', 'EHS-2022-28', '2001-06-03', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (614, 'MASEKO, Mvuselela', 'Mvuselela', 'MASEKO', 'EHS-2022-29', '2006-10-09', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (615, 'DLAMINI, Tiyandza', 'Tiyandza', 'DLAMINI', 'PCH-2022-20', '2009-07-11', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (616, 'NDZANDZABA, Phiwayinkhosi', 'Phiwayinkhosi', 'NDZANDZABA', 'EUK-2022-22', '2004-07-25', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (617, 'GAMEDZE, Temantimandze', 'Temantimandze', 'GAMEDZE', 'PCH-2022-21', '2004-12-25', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (618, 'MKHUMBANE, Yolanda', 'Yolanda', 'MKHUMBANE', 'PCH-2022-22', '2006-04-04', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (619, 'MAZIYA, Samkelisiwe', 'Samkelisiwe', 'MAZIYA', 'EUK-2022-23', '2005-05-04', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (620, 'MNCINA, Nokwanda', 'Nokwanda', 'MNCINA', 'EUK-2022-24', '2005-04-14', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (621, 'MDLETSHE, Xolile', 'Xolile', 'MDLETSHE', 'FHS-2022-13', '2005-05-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (622, 'MAGAGULA, Nonduduzo', 'Nonduduzo', 'MAGAGULA', 'PCH-2022-23', '2008-11-10', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (623, 'MNISI, Zwelisha', 'Zwelisha', 'MNISI', 'EUK-2022-25', '2006-06-05', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (624, 'MNISI, Zwelisha', 'Zwelisha', 'MNISI', 'EUK-2022-26', '2006-06-05', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (625, 'MNCINA, Nokwanda', 'Nokwanda', 'MNCINA', 'EUK-2022-27', '2005-04-14', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (626, 'SACOLO, Sinenkhosi', 'Sinenkhosi', 'SACOLO', 'EHS-2022-30', '2006-11-06', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (627, 'MATSEBULA, Nkhosingiphile Sanele', 'Nkhosingiphile Sanele', 'MATSEBULA', 'EHS-2022-31', '2007-10-09', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (628, 'MAZIBUKO, Mcolisi  Simanga', 'Mcolisi  Simanga', 'MAZIBUKO', 'EHS-2022-32', '2006-09-13', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (629, 'NDAZNDZABA, Phiwayinkhosi Sigayoyo', 'Phiwayinkhosi Sigayoyo', 'NDAZNDZABA', 'EUK-2022-28', '2004-07-25', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (630, 'NKAMBULE, Mlungisi', 'Mlungisi', 'NKAMBULE', 'FHS-2022-14', '2007-09-24', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (631, 'MAZIYA, Mayibongwe', 'Mayibongwe', 'MAZIYA', 'PCH-2022-24', '2001-05-29', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (632, 'THEMBA, Lucia', 'Lucia', 'THEMBA', 'PCH-2022-25', '2005-01-08', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (633, 'MNCINA, Thobekile', 'Thobekile', 'MNCINA', 'EHS-2022-33', '2007-11-03', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (634, 'NGWENYA , Siphesihle', 'Siphesihle', 'NGWENYA ', 'EHS-2022-34', '2006-06-02', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (635, 'LUKHELE, Sonkhe', 'Sonkhe', 'LUKHELE', 'FHS-2022-15', '2008-03-16', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (636, 'TSABEDZE, Thembisile', 'Thembisile', 'TSABEDZE', 'PCH-2022-26', '2004-03-05', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (637, 'ZIKALALA, Bandiswa', 'Bandiswa', 'ZIKALALA', 'PCH-2022-27', '2008-03-12', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (638, 'SHABANGU, Nkhosenhle Patric', 'Nkhosenhle Patric', 'SHABANGU', 'PCH-2022-28', '2006-05-20', 'M', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (639, 'MASINGA, Linda', 'Linda', 'MASINGA', 'PCH-2022-29', '2001-01-26', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (640, 'MAGAYE, Ncobile', 'Ncobile', 'MAGAYE', 'PCH-2022-30', '2002-03-14', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (641, 'SHIBA, Andile', 'Andile', 'SHIBA', 'EHS-2023-01', '2006-09-22', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (642, 'DLAMINI, Nkhosiyentile', 'Nkhosiyentile', 'DLAMINI', 'EHS-2023-02', '2007-12-17', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (643, 'DLAMINI, Nokwanda', 'Nokwanda', 'DLAMINI', 'EHS-2023-03', '2008-03-12', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (644, 'DLAMINI, Nosimilo', 'Nosimilo', 'DLAMINI', 'EHS-2023-04', '2002-05-01', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (645, 'GININDZA, Londiwe', 'Londiwe', 'GININDZA', 'EHS-2023-05', '2009-11-27', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (646, 'HLOPHE, Siyabonga', 'Siyabonga', 'HLOPHE', 'EHS-2023-06', '2006-12-13', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (647, 'KHUMALO, Sinethemba', 'Sinethemba', 'KHUMALO', 'EHS-2023-07', '2008-03-28', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (648, 'KHUMALO, Temantungwa', 'Temantungwa', 'KHUMALO', 'EHS-2023-08', '2008-02-28', 'F', 'Y', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (649, 'MALINDZISA, Bongiwe', 'Bongiwe', 'MALINDZISA', 'EHS-2023-09', '2009-04-06', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (650, 'MAMBA, Senabelo', 'Senabelo', 'MAMBA', 'EHS-2023-10', '2009-07-25', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (651, 'MASUKU, Khanyakwethu', 'Khanyakwethu', 'MASUKU', 'EHS-2023-11', '2004-06-22', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (652, 'MATHUNJWA, Thandiswa', 'Thandiswa', 'MATHUNJWA', 'EHS-2023-12', '2008-10-19', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (653, 'MATSEBULA, Nkhosiyaphendula', 'Nkhosiyaphendula', 'MATSEBULA', 'EHS-2023-13', '2008-10-23', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (654, 'MHLANGA, Hlobsile', 'Hlobsile', 'MHLANGA', 'EHS-2023-14', '2009-04-02', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (655, 'MNISI, Nkhosephayo', 'Nkhosephayo', 'MNISI', 'EHS-2023-15', '2009-10-09', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (656, 'MNISI , Siphiwokuhle', 'Siphiwokuhle', 'MNISI ', 'EHS-2023-16', '2009-04-17', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (657, 'MNISI, Siphosethu', 'Siphosethu', 'MNISI', 'EHS-2023-17', '2009-04-17', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (658, 'MOTSA, Mukela', 'Mukela', 'MOTSA', 'EHS-2023-18', '2006-03-08', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (659, 'NGWENYA, Sanele', 'Sanele', 'NGWENYA', 'EHS-2023-19', '2008-10-20', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (660, 'SIMELANE, Zinhle', 'Zinhle', 'SIMELANE', 'EHS-2023-20', '2001-01-06', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (661, 'MAPHOSA, Tebenguni', 'Tebenguni', 'MAPHOSA', 'EKU-2023-01', '2003-11-30', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (662, 'MAKHANYA, Temasiko', 'Temasiko', 'MAKHANYA', 'LON-2023-01', '2006-10-09', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (663, 'NDLANGAMANDLA, Andile', 'Andile', 'NDLANGAMANDLA', 'LON-2023-02', '2008-12-15', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (664, 'DLAMINI, Bongeka', 'Bongeka', 'DLAMINI', 'PCH-2023-01', '2001-09-11', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (665, 'DLAMINI, Njabuliso', 'Njabuliso', 'DLAMINI', 'PCH-2023-02', '2007-09-24', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (666, 'DLAMINI, Ntombikayise', 'Ntombikayise', 'DLAMINI', 'PCH-2023-03', '2002-03-22', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (667, 'DLAMINI, Sisekelo', 'Sisekelo', 'DLAMINI', 'PCH-2023-04', '2010-03-10', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (668, 'DLAMINI, Sibahle', 'Sibahle', 'DLAMINI', 'PCH-2023-05', '2009-05-29', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (669, 'DLAMINI, Zuzumuzi', 'Zuzumuzi', 'DLAMINI', 'PCH-2023-06', '2008-11-02', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (670, 'DUBE, Ziyanda', 'Ziyanda', 'DUBE', 'PCH-2023-07', '2005-04-08', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (671, 'GWAMBI, Albert', 'Albert', 'GWAMBI', 'PCH-2023-08', '2005-04-07', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (672, 'KUNENE, Siphesihle', 'Siphesihle', 'KUNENE', 'PCH-2023-09', '1999-08-24', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (673, 'MABUZA, Siphethokuhle', 'Siphethokuhle', 'MABUZA', 'PCH-2023-10', '2003-03-29', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (674, 'MAGONGO, Nokulunga', 'Nokulunga', 'MAGONGO', 'PCH-2023-11', '2010-01-26', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (675, 'MALINDZISA, Nokwethu', 'Nokwethu', 'MALINDZISA', 'PCH-2023-12', '2010-02-02', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (676, 'MALINDZISA, Siphosethu', 'Siphosethu', 'MALINDZISA', 'PCH-2023-13', '2006-06-18', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (677, 'MAVUNDLA, Mawande', 'Mawande', 'MAVUNDLA', 'PCH-2023-14', '2009-01-23', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (678, 'MASEKO, Simphiwe Nkhululeko', 'Simphiwe Nkhululeko', 'MASEKO', 'PCH-2023-15', '2006-02-17', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (679, 'MTSETFWA, Sbonelo', 'Sbonelo', 'MTSETFWA', 'PCH-2023-16', '2007-12-19', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (680, 'MAPHOSA, Nosito', 'Nosito', 'MAPHOSA', 'PCH-2023-17', '2008-03-18', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (681, 'MATSE, Ntokozo', 'Ntokozo', 'MATSE', 'PCH-2023-18', '2006-08-22', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (682, 'METHULA, Samkelisiwe', 'Samkelisiwe', 'METHULA', 'PCH-2023-19', '2002-03-06', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (683, 'MNISI, Lwandile', 'Lwandile', 'MNISI', 'PCH-2023-20', '2006-04-24', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (684, 'NDWANDWE, Nokukhanya', 'Nokukhanya', 'NDWANDWE', 'PCH-2023-21', '2008-05-05', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (685, 'NGCAMPHALALA, Nonhle Charity', 'Nonhle Charity', 'NGCAMPHALALA', 'PCH-2023-22', '2008-07-21', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (686, 'NSOKO, Ntombikayise', 'Ntombikayise', 'NSOKO', 'PCH-2023-23', '2008-06-12', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (687, 'NXUMALO, Nonduduzo', 'Nonduduzo', 'NXUMALO', 'PCH-2023-24', '2000-03-08', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (688, 'SIMELANE, Simphiwe', 'Simphiwe', 'SIMELANE', 'PCH-2023-25', '2008-05-29', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (689, 'SIMELANE, Lihle', 'Lihle', 'SIMELANE', 'PCH-2023-26', '2008-06-22', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (690, 'SHABANGU, Minenhle', 'Minenhle', 'SHABANGU', 'PCH-2023-27', '2010-03-24', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (691, 'SHONGWE, Sethu', 'Sethu', 'SHONGWE', 'PCH-2023-28', '2006-11-25', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (692, 'THEMBA, Andile', 'Andile', 'THEMBA', 'PCH-2023-29', '2005-12-11', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (693, 'TSABEDZE, Yenzokuhle', 'Yenzokuhle', 'TSABEDZE', 'PCH-2023-30', '2009-07-04', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (694, 'VILANE, Mhlengi', 'Mhlengi', 'VILANE', 'PCH-2023-31', '2004-05-12', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (695, 'DLAMINI, Mayibongwe', 'Mayibongwe', 'DLAMINI', 'FHS-2023-01', '2008-11-11', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (696, 'DLAMINI, Sibongisizwe', 'Sibongisizwe', 'DLAMINI', 'FHS-2023-02', '2007-12-05', 'M', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (697, 'DLAMINI, Sikhulile', 'Sikhulile', 'DLAMINI', 'FHS-2023-03', '2005-09-14', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (698, 'KHOZU, Casey', 'Casey', 'KHOZU', 'FHS-2023-04', '2007-01-22', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (699, 'KOBE, Ncedo', 'Ncedo', 'KOBE', 'FHS-2023-05', '2006-09-27', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (700, 'LANGA, Lindiwe', 'Lindiwe', 'LANGA', 'FHS-2023-06', '2008-01-30', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (701, 'MADUNA, Nel''siwe', 'Nel''siwe', 'MADUNA', 'FHS-2023-07', '2008-12-08', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (702, 'MATHANYA, Sakhile', 'Sakhile', 'MATHANYA', 'FHS-2023-08', '2009-11-09', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (703, 'MAMBA, Temnotfo', 'Temnotfo', 'MAMBA', 'FHS-2023-09', '2004-05-18', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (704, 'MHLANGA, Gugulethu', 'Gugulethu', 'MHLANGA', 'FHS-2023-10', '2009-07-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (705, 'MATSEBULA, Sihlelelwe', 'Sihlelelwe', 'MATSEBULA', 'FHS-2023-11', '2007-10-11', 'M', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (706, 'MBUKWANE, France', 'France', 'MBUKWANE', 'FHS-2023-12', '2007-01-07', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (707, 'MNISI, Simiso', 'Simiso', 'MNISI', 'FHS-2023-13', '2010-02-23', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (708, 'MNISI, Vuyiswa', 'Vuyiswa', 'MNISI', 'FHS-2023-14', '2009-04-07', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (709, 'MOTSA, Namile', 'Namile', 'MOTSA', 'FHS-2023-15', '2010-04-28', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (710, 'MTWITHI, Neliswa', 'Neliswa', 'MTWITHI', 'FHS-2023-16', '2009-04-22', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (711, 'NKAMBULE, Blessing', 'Blessing', 'NKAMBULE', 'FHS-2023-17', '2009-09-29', 'F', 'Y', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (712, 'THOWLE, Patrica', 'Patrica', 'THOWLE', 'FHS-2023-18', '2009-03-14', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (713, 'TSABEDZE, Ayanda', 'Ayanda', 'TSABEDZE', 'FHS-2023-19', '2009-08-17', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (714, 'TSABEDZE, Bandile', 'Bandile', 'TSABEDZE', 'FHS-2023-20', '2007-08-27', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (715, 'LUBISI, Temndeni', 'Temndeni', 'LUBISI', 'PCH-2023-32', '2004-08-07', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (716, 'MNISI, Temvelo', 'Temvelo', 'MNISI', 'PCH-2023-33', '2004-06-23', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (717, 'MAKHANYA, Sakhile', 'Sakhile', 'MAKHANYA', 'FHS-2023-21', '2009-11-09', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (718, 'NGCAMAPHALALA, Nonhle', 'Nonhle', 'NGCAMAPHALALA', 'FHS-2023-22', '2008-07-21', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (719, 'NKAMBULE, Mthokozisi', 'Mthokozisi', 'NKAMBULE', 'FHS-2023-23', 'M', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (720, 'THOMO, Patricia  Siphumelele', 'Patricia  Siphumelele', 'THOMO', 'FHS-2023-24', '2009-03-14', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (721, 'KHUMALO, Sibusiso', 'Sibusiso', 'KHUMALO', 'EHS-2023-21', '2008-02-10', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (722, 'MABUZA, Sincobile', 'Sincobile', 'MABUZA', 'EHS-2023-22', '2001-11-02', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (723, 'MADVUNA, Thando', 'Thando', 'MADVUNA', 'EHS-2023-23', '2007-08-27', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (724, 'SHIBA, Sinethemba', 'Sinethemba', 'SHIBA', 'EHS-2023-24', '2006-06-04', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (725, 'SIZAKELE, Tfomo', 'Tfomo', 'SIZAKELE', 'EHS-2023-25', 'F', 'N', 'Y', 'Y', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (726, 'NGUBENI, Lindelwa', 'Lindelwa', 'NGUBENI', 'PCH-2023-34', '2004-01-01', 'F', 'N', 'Y', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (727, 'MOTSA, Namile', 'Namile', 'MOTSA', 'EHS-2023-26', '2010-04-28', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (728, 'TFOMO, Sizakele', 'Sizakele', 'TFOMO', 'EHS-2023-27', '2008-01-19', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (729, 'DLAMINI, Zaba', 'Zaba', 'DLAMINI', 'EHS-2023-28', '2010-08-20', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (730, 'DLAMINI, Nhlambululo Ciniso', 'Nhlambululo Ciniso', 'DLAMINI', 'EKU-2023-02', '2010-03-07', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (731, 'MABUZA, Siphethokuhle', 'Siphethokuhle', 'MABUZA', 'PCH-2023-35', '2003-03-29', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (732, 'DLAMINI, Nonkhululako Lelihle', 'Nonkhululako Lelihle', 'DLAMINI', 'FHS-2023-25', '2020-01-10', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (733, 'MHLANGA, Gugulethu Ziyanda', 'Gugulethu Ziyanda', 'MHLANGA', 'FHS-2023-26', '2009-07-06', 'F', 'N', 'N', 'N', 'N');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (734, 'SHABANGU, Nokwanda', 'Nokwanda', 'SHABANGU', 'FHS-2023-27', '2004-08-23', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (735, 'KOBE, Ncedo', 'Ncedo', 'KOBE', 'FHS-2023-28', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (736, 'MAGONGO, Nokulunga', 'Nokulunga', 'MAGONGO', 'PCH-2023-36', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (737, 'MASEKO, Mfan''fikile', 'Mfan''fikile', 'MASEKO', 'EKU-2023-03', '2006-04-16', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (738, 'KUNENE, Lindani', 'Lindani', 'KUNENE', 'EKU-2023-04', '2005-01-06', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (739, 'DLAMINI, Siphesihle Ayanda', 'Siphesihle Ayanda', 'DLAMINI', 'EKU-2023-05', '2003-06-14', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (740, 'MALINDZISA, Mbongwa', 'Mbongwa', 'MALINDZISA', 'EKU-2023-06', '2004-07-18', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (741, 'SHABANGU, Tema', 'Tema', 'SHABANGU', 'EKU-2023-07', '2007-01-11', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (742, 'MAGAGULA, Siphamandla Thamsanga', 'Siphamandla Thamsanga', 'MAGAGULA', 'EKU-2023-08', '2006-08-24', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (743, 'DLAMINI, Hleliswa Nosipho', 'Hleliswa Nosipho', 'DLAMINI', 'EKU-2023-09', '2007-04-23', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (744, 'ZULU, Isaya', 'Isaya', 'ZULU', 'EKU-2023-10', '2008-05-17', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (745, 'SHABANGU, Mhlonishwa Sakhiwe', 'Mhlonishwa Sakhiwe', 'SHABANGU', 'EKU-2023-11', '2009-06-26', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (746, 'NKWANYANA, Mlandvo Dragba', 'Mlandvo Dragba', 'NKWANYANA', 'EKU-2023-12', '2009-06-12', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (747, 'MNISI, Nomsa', 'Nomsa', 'MNISI', 'EKU-2023-13', '2007-11-04', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (748, 'MNCINA, Temhlanga Nombuso', 'Temhlanga Nombuso', 'MNCINA', 'EKU-2023-14', '2006-09-28', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (749, 'MNCINA, Tandzile', 'Tandzile', 'MNCINA', 'EKU-2023-15', '2008-08-07', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (750, 'MASILELA, Pholani Themba', 'Pholani Themba', 'MASILELA', 'EKU-2023-16', '2007-11-10', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (751, 'KHOSA, Landile Zaida', 'Landile Zaida', 'KHOSA', 'EKU-2023-17', '2004-04-18', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (752, 'DLAMINI, Siphosethu Dokotela', 'Siphosethu Dokotela', 'DLAMINI', 'EKU-2023-18', '2009-10-14', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (753, 'DLAMINI, Sinakekelwe Temahlubi', 'Sinakekelwe Temahlubi', 'DLAMINI', 'EKU-2023-19', '2009-07-24', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (754, 'DLAMINI, Luyanda Sincumo', 'Luyanda Sincumo', 'DLAMINI', 'EKU-2023-20', '2009-07-12', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (755, 'MNCINA, Mfanawenkhosi Emmanuel', 'Mfanawenkhosi Emmanuel', 'MNCINA', 'EKU-2023-21', '2010-01-20', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (756, 'MNCINA, Lusanda ', 'Lusanda ', 'MNCINA', 'EKU-2023-22', '2008-06-14', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (757, 'MNCINA, Lethokuhle Luyanda', 'Lethokuhle Luyanda', 'MNCINA', 'EKU-2023-23', '2007-03-22', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (758, 'MHLANGA, Mphumuzi Simiso', 'Mphumuzi Simiso', 'MHLANGA', 'EKU-2023-24', '2010-03-10', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (759, 'MNCINA, Andisile (Andiswa)', 'Andisile (Andiswa)', 'MNCINA', 'EKU-2023-25', '2009-07-02', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (760, 'DLAMINI, Nickey Phiwokuhle', 'Nickey Phiwokuhle', 'DLAMINI', 'LON-2024-01', '2009-12-31', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (761, 'DLAMINI, Thubelihle Siyamthando', 'Thubelihle Siyamthando', 'DLAMINI', 'LON-2024-02', '2008-04-28', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (762, 'MABUZA, Bangumenzi Bongiswa', 'Bangumenzi Bongiswa', 'MABUZA', 'LON-2024-03', '2005-02-01', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (763, 'MABUZA, Mengameli Sibusiso', 'Mengameli Sibusiso', 'MABUZA', 'LON-2024-04', '2005-09-10', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (764, 'MABUZA, Temalungelo Grace', 'Temalungelo Grace', 'MABUZA', 'LON-2024-05', '2008-03-20', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (765, 'MKHATJWA, Sibusiso Siphowethu', 'Sibusiso Siphowethu', 'MKHATJWA', 'LON-2024-06', '2010-06-12', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (766, 'MKHONTA, Nonophile Vivica', 'Nonophile Vivica', 'MKHONTA', 'LON-2024-07', '2011-01-14', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (767, 'MNCINA, Menelisi Melokuhle', 'Menelisi Melokuhle', 'MNCINA', 'LON-2024-08', '2010-11-28', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (768, 'SHABANGU, Lamahle Liyana', 'Lamahle Liyana', 'SHABANGU', 'LON-2024-09', '2011-01-11', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (769, 'SHIBA, Sihlelwe Temcebo', 'Sihlelwe Temcebo', 'SHIBA', 'LON-2024-10', '2010-12-16', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (770, 'THWALA, Siwakhile Sisekelo', 'Siwakhile Sisekelo', 'THWALA', 'LON-2024-11', '2011-03-20', 'M', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (771, 'ZIKALALA, Nkosingiphile Innocent', 'Nkosingiphile Innocent', 'ZIKALALA', 'LON-2024-12', '2006-08-18', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (772, 'DLAMINI, Ayanda Emmanuel', 'Ayanda Emmanuel', 'DLAMINI', 'LON-2024-13', '2006-04-11', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (773, 'DLAMINI, Sandiso Sandra', 'Sandiso Sandra', 'DLAMINI', 'LON-2024-14', '2008-12-29', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (774, 'DLAMINI, Thubelihle Siyandza', 'Thubelihle Siyandza', 'DLAMINI', 'LON-2024-15', '2009-03-03', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (775, 'MASEKO, Nompendulo Nkhosingiphile', 'Nompendulo Nkhosingiphile', 'MASEKO', 'LON-2024-16', '2008-08-05', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (776, 'MKHONTA, Siphesihle Temahlungwane', 'Siphesihle Temahlungwane', 'MKHONTA', 'LON-2024-17', '2008-10-14', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (777, 'NDLANGAMANDA, Andile Samkelo', 'Andile Samkelo', 'NDLANGAMANDA', 'LON-2024-18', '2008-12-15', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (778, 'NKHAMBULE, Tengetile Lihle', 'Tengetile Lihle', 'NKHAMBULE', 'LON-2024-19', '2006-11-16', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (779, 'MASANGO, Malibongwe Thandokuhle', 'Malibongwe Thandokuhle', 'MASANGO', 'LON-2024-20', '2008-03-03', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (780, 'SHIBA, Andile Abo', 'Andile Abo', 'SHIBA', 'LON-2024-21', '2006-09-22', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (781, 'MAKHANYA, Temisiko Teyise', 'Temisiko Teyise', 'MAKHANYA', 'LON-2024-22', '2006-10-09', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (782, 'MBINGO, Sinenhlanhla Sebonele', 'Sinenhlanhla Sebonele', 'MBINGO', 'LON-2024-23', '2007-09-24', 'F', 'N', 'N', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (783, 'SIBANDZE, Minenhle Surprise', 'Minenhle Surprise', 'SIBANDZE', 'LON-2024-24', '2008-03-09', 'F', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (784, 'DLAMINI, Sibonginkhosi Banele', 'Sibonginkhosi Banele', 'DLAMINI', 'LON-2024-25', '2002-02-18', 'M', 'N', 'Y', 'N', 'Y');
INSERT INTO Student
(Student_id, Student_nm, First_nm, Last_nm, StudentCode_tx, Birth_dt, Gender_tx, Sponsored_yn, OVC_yn, deleted_yn, active_yn) VALUES (785, 'NDLANGAMANDLA, Siceliwe Samukelisiwe', 'Siceliwe Samukelisiwe', 'NDLANGAMANDLA', 'LON-2024-26', '2006-01-12', 'F', 'N', 'Y', 'N', 'Y');


INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (22, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (1, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (23, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (25, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (26, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (2, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (3, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (27, '2013-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (4, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (5, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (6, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (28, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (7, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (29, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (30, '2013-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (31, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (8, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (9, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (10, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (33, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (34, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (35, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (11, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (12, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (36, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (37, '2013-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (13, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (14, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (15, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (16, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (38, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (17, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (39, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (18, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (19, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (20, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (40, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (41, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (67, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (42, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (68, '2013-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (43, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (69, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (44, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (70, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (45, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (71, '2013-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (46, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (47, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (48, '2013-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (49, '2013-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (72, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (73, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (50, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (74, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (75, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (76, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (51, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (77, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (52, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (78, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (79, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (53, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (54, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (80, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (81, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (55, '2013-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (82, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (56, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (83, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (57, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (84, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (58, '2013-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (85, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (59, '2013-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (60, '2013-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (86, '2013-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (61, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (62, '2013-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (63, '2013-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (64, '2013-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (65, '2013-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (87, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (66, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (49, '2009-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (62, '2009-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (37, '2009-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (55, '2009-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (23, '2010-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (25, '2010-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (30, '2010-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (41, '2010-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (45, '2010-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (58, '2010-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (13, '2010-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (49, '2010-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (62, '2010-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (55, '2010-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (42, '2010-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (51, '2010-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (37, '2010-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (33, '2010-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (38, '2010-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (60, '2010-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (23, '2011-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (25, '2011-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (30, '2011-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (41, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (45, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (58, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (34, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (36, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (46, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (57, '2011-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (22, '2011-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (43, '2011-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (49, '2011-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (55, '2011-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (42, '2011-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (51, '2011-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (26, '2011-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (59, '2011-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (37, '2011-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (33, '2011-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (38, '2011-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (60, '2011-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (47, '2011-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (48, '2011-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (31, '2012-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (50, '2012-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (52, '2012-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (56, '2012-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (64, '2012-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (66, '2012-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2012-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (35, '2012-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (28, '2012-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (23, '2012-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (25, '2012-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2012-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (34, '2012-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (36, '2012-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (46, '2012-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (22, '2012-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (43, '2012-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (55, '2012-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (51, '2012-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (26, '2012-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (59, '2012-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (37, '2012-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (33, '2012-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (38, '2012-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (60, '2012-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (47, '2012-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (48, '2012-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (62, '2012-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (96, '2013-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (98, '2013-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (2, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (29, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (99, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (100, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (101, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (102, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (103, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (104, '2014-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (1, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (5, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (9, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (105, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (15, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (16, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (106, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (80, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (84, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (107, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (96, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (108, '2014-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (31, '2014-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (109, '2014-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (110, '2014-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (35, '2014-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (71, '2014-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (111, '2014-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (23, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (112, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (113, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (8, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (22, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (13, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (14, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (43, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (69, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (114, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (115, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (65, '2014-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (27, '2014-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (116, '2014-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (68, '2014-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (55, '2014-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (117, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (4, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (118, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (119, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (120, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (121, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (122, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (18, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (19, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (123, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (124, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (125, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (126, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (127, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (74, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (128, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (78, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (83, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (129, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (3, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (130, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (17, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (20, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (73, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (131, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (77, '2014-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (132, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (81, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (64, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (98, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (133, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (134, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (10, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (44, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (135, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (50, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (76, '2014-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (52, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (56, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (57, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (87, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (66, '2014-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (136, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (34, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (36, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (39, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (137, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (70, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (75, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (138, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (82, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (58, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (63, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (139, '2014-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (26, '2014-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (140, '2014-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (45, '2014-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (51, '2014-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (54, '2014-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (141, '2015-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (142, '2015-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (143, '2015-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (144, '2015-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (145, '2015-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2016-01-04', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (162, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (163, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (165, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (31, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (109, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (167, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (35, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (105, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (15, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (168, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (169, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (99, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (170, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (101, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (71, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (111, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (103, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (106, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (104, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (174, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (80, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (176, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (178, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (179, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (180, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (196, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (200, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (162, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (163, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (165, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (31, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (109, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (167, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (35, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (105, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (15, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (168, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (169, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (99, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (170, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (101, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (71, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (111, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (103, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (106, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (174, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (80, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (176, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (179, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (180, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (181, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (182, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (183, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (184, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (185, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (186, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (187, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (188, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (189, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (190, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (191, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (192, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (193, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (194, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (195, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (197, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (198, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (199, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (162, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (163, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (164, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (165, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (166, '2016-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (31, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (109, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (167, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (35, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (105, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (15, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (168, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (169, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (99, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (170, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (101, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (172, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (71, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (173, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (111, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (103, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (106, '2016-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (174, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (175, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (80, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (176, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (179, '2016-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (180, '2016-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (234, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (235, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (117, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (133, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (236, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (237, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (238, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (239, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (240, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (241, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (118, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (242, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (243, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (244, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (10, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (245, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (246, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (247, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (130, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (119, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (248, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (120, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (249, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (17, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (122, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (250, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (19, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (20, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (251, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (252, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (253, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (254, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (255, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (256, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (257, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (258, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (44, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (70, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (259, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (124, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (135, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (260, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (125, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (261, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (73, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (126, '2015-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (50, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (74, '2015-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (262, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (141, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (77, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (263, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (52, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (265, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (266, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (81, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (267, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (56, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (268, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (269, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (270, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (57, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (271, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (272, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (273, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (274, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (275, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (276, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (277, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (278, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (279, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (280, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (281, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (64, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (282, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (283, '2016-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (66, '2016-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (146, '2016-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (96, '2016-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (285, '2017-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (286, '2017-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (287, '2017-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (288, '2017-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (289, '2017-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (290, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (291, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (292, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (293, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (294, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (295, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (296, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (297, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (298, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (299, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (300, '2017-03-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (301, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (302, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (303, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (304, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (305, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (306, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (307, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (308, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (309, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (310, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (311, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (312, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (313, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (314, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (315, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (316, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (317, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (318, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (319, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (320, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (321, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (322, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (323, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (324, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (325, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (24, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (64, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (17, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (19, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (73, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (74, '2016-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (77, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (117, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (118, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (120, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (122, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (124, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (125, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (126, '2016-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (130, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (141, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (142, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (235, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (236, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (237, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (239, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (241, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (242, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (243, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (244, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (245, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (247, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (249, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (253, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (255, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (257, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (259, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (260, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (261, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (262, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (264, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (265, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (266, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (267, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (269, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (270, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (271, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (272, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (275, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (276, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (277, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (279, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (280, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (281, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (282, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (283, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (326, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (327, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (15, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (99, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (101, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (103, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (105, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (165, '2017-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (166, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (167, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (168, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (174, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (176, '2017-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (178, '2017-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (180, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (182, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (184, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (185, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (186, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (190, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (191, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (192, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (194, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (195, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (196, '2017-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (197, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (199, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (200, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2017-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (119, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (251, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (256, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (273, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (274, '2017-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (80, '2017-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (106, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (170, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (172, '2017-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (173, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (175, '2017-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (181, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (187, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (198, '2017-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (189, '2017-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (330, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (332, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (333, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (334, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (335, '2017-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (336, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (337, '2017-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (338, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (341, '2018-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (141, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (256, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (257, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (260, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (262, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (103, '2019-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (106, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (266, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (269, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (274, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (278, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (283, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (118, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (242, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (243, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (247, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (253, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (126, '2017-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (271, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (280, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (119, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (122, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (99, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (20, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (191, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (251, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (101, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (64, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (352, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (332, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (166, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (182, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (184, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (32, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (366, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (353, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (330, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (181, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (187, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (194, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (199, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (200, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (192, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (170, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (173, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (174, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (180, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (162, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (167, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (105, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (168, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (172, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (96, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (371, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (349, '2018-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (181, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (295, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (313, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (146, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (314, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (341, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (366, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (350, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (342, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (367, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (117, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (343, '2018-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (343, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (315, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (315, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (333, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (297, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (351, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (182, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (285, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (299, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (299, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (369, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (369, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (300, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (237, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (344, '2018-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (344, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (286, '2018-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (286, '2019-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (184, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (242, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (243, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (353, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (245, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (247, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (368, '2018-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (368, '2019-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (370, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (370, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (316, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (187, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (354, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (354, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (345, '2018-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (345, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (190, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (301, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (301, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (319, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (373, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (373, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (19, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (191, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (355, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (355, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (302, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (302, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (192, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (253, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (254, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (292, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (292, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (256, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (172, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (374, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (374, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (189, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (257, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (259, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (259, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (195, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (173, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (303, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (303, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (260, '2019-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (261, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (346, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (356, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (356, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (347, '2018-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (347, '2019-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (126, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (74, '2017-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (357, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (357, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (262, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (337, '2018-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (337, '2019-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (77, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (293, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (197, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (197, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (263, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (263, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (320, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (320, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (304, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (304, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (265, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (266, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (358, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (358, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (376, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (376, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (338, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (198, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (198, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (174, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (348, '2018-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (348, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (377, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (377, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (199, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (359, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (359, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (306, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (306, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (81, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (267, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (267, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (378, '2018-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (378, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (360, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (360, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (269, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (325, '2018-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (307, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (307, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (271, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (340, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (362, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (362, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (272, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (272, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (308, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (308, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (273, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (273, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (274, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (275, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (275, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (276, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (276, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (349, '2019-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (277, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (277, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (309, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (309, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (278, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (310, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (310, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (335, '2018-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (335, '2019-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (124, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (288, '2018-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (288, '2019-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (96, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (279, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (279, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (281, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (281, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (294, '2018-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (280, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (291, '2018-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (291, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (311, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (311, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (312, '2018-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (312, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (363, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (363, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (364, '2018-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (364, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (282, '2018-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (282, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (180, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (365, '2018-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (365, '2019-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (379, '2018-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (379, '2019-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (200, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (380, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (393, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (421, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (381, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (382, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (383, '2019-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (384, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (385, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (391, '2019-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (394, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (395, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (386, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (387, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (388, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (389, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (390, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (392, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (397, '2019-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (403, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (432, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (431, '2019-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (375, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (419, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (410, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (396, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (398, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (399, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (400, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (401, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (402, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (404, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (405, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (406, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (407, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (408, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (409, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (411, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (412, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (413, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (414, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (415, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (416, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (417, '2019-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (418, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (420, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (443, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (422, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (423, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (424, '2019-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (425, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (426, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (427, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (428, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (429, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (430, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (433, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (434, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (438, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (435, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (436, '2019-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (437, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (439, '2019-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (440, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (441, '2019-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (444, '2019-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (83, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (17, '2019-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (283, '2019-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (415, '2020-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (428, '2020-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (316, '2020-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (146, '2020-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (315, '2020-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (299, '2020-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (301, '2020-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (302, '2020-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (263, '2020-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (360, '2020-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (446, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (342, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (297, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (370, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (303, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (374, '2021-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (369, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (344, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (383, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (384, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (146, '2021-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (447, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (448, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (449, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (390, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (391, '2021-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (392, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (396, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (450, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (399, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (451, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (452, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (404, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (405, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (453, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (454, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (455, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (456, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (457, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (416, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (418, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (458, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (420, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (459, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (460, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (461, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (462, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (463, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (421, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (464, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (260, '2021-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (422, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (465, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (425, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (347, '2021-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (466, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (467, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (428, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (468, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (469, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (470, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (429, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (471, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (472, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (473, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (474, '2021-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (431, '2021-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (433, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (348, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (435, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (437, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (349, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (475, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (476, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (477, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (478, '2021-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (479, '2021-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (480, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (481, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (482, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (483, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (484, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (485, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (486, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (366, '2021-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (385, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (367, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (487, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (388, '2021-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (488, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (315, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (393, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (489, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (166, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (299, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (490, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (286, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (401, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (402, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (403, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (368, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (491, '2021-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (492, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (316, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (408, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (493, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (409, '2021-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (301, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (494, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (495, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (373, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (496, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (497, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (302, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (498, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (499, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (500, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (501, '2021-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (502, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (375, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (503, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (259, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (424, '2021-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (426, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (504, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (505, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (337, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (376, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (377, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (360, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (506, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (507, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (508, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (509, '2021-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (444, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (438, '2021-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (288, '2021-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (510, '2021-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (511, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (512, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (513, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (514, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (295, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (445, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (381, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (382, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (350, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (515, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (386, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (387, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (516, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (394, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (300, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (517, '2021-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (518, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (398, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (118, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (400, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (519, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (353, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (520, '2021-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (412, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (413, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (415, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (417, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (355, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (521, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (254, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (257, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (522, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (423, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (356, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (523, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (357, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (430, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (304, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (432, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (358, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (359, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (306, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (434, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (524, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (525, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (307, '2021-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (273, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (436, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (274, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (275, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (309, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (281, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (311, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (312, '2021-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (363, '2021-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (526, '2021-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (527, '2021-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (440, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (441, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (21, '2020-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (256, '2020-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (266, '2020-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (181, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (187, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (190, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (171, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (262, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (200, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (199, '2020-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (346, '2021-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (530, '2021-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (531, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (532, '2021-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (533, '2021-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (534, '2022-03-15', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (569, '2022-04-05', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (570, '2022-03-15', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (571, '2022-03-15', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (572, '2022-03-15', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (573, '2022-03-15', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (574, '2022-03-15', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (555, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (556, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (557, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (558, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (559, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (560, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (561, '2022-03-15', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (562, '2022-03-15', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (563, '2022-03-15', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (564, '2022-03-15', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (565, '2022-03-15', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (566, '2022-03-15', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (567, '2022-03-15', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (568, '2022-03-15', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (575, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (576, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (577, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (578, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (579, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (580, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (581, '2022-03-15', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (582, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (583, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (584, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (585, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (586, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (587, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (588, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (589, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (590, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (591, '2022-03-15', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (592, '2022-03-15', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (593, '2022-03-15', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (594, '2022-03-15', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (595, '2022-03-15', 5, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (600, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (535, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (536, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (537, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (538, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (539, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (540, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (541, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (542, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (544, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (545, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (546, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (547, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (548, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (549, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (550, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (551, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (552, '2022-03-15', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (553, '2022-03-15', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (554, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (543, '2022-04-05', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (434, '2022-03-09', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (430, '2022-03-09', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (359, '2022-03-09', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (344, '2022-03-09', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (455, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (459, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (601, '2022-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (381, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (602, '2022-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (604, '2022-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (605, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (606, '2022-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (491, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (501, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (401, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (393, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (375, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (376, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (388, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (607, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (608, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (609, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (610, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (611, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (612, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (613, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (614, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (447, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (421, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (425, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (468, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (469, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (479, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (479, '2022-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (479, '2022-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (471, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (451, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (359, '2022-04-23', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (430, '2022-04-23', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (533, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (454, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (603, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (615, '2022-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (616, '2022-04-05', 4, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (617, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (618, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (619, '2022-04-05', 4, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (620, '2022-04-05', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (621, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (622, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (623, '2022-04-05', 4, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (624, '2022-04-05', 4, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (625, '2022-04-05', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (626, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (627, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (628, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (629, '2022-04-05', 4, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (630, '2022-05-20', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (631, '2022-05-23', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (632, '2022-05-20', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (527, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (487, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (488, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (489, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (369, '2022-04-05', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (490, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (402, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (403, '2022-04-05', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (370, '2022-04-05', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (491, '2022-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (492, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (409, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (494, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (373, '2022-04-05', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (496, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (497, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (498, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (499, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (501, '2022-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (503, '2022-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (424, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (426, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (504, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (505, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (446, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (377, '2022-04-05', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (506, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (438, '2022-04-05', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (510, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (511, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (513, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (295, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (445, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (381, '2022-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (387, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (297, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (394, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (517, '2022-04-05', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (300, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (518, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (398, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (400, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (353, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (520, '2022-04-05', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (530, '2022-04-05', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (413, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (415, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (417, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (355, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (521, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (254, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (303, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (522, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (423, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (356, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (523, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (357, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (432, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (358, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (306, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (525, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (307, '2022-04-05', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (436, '2022-04-05', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (363, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (526, '2022-04-05', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (383, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (448, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (342, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (390, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (396, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (450, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (399, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (452, '2022-04-05', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (405, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (453, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (456, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (457, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (418, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (458, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (420, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (459, '2022-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (554, '2022-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (460, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (461, '2022-04-05', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (462, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (463, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (464, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (422, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (467, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (428, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (531, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (633, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (470, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (429, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (472, '2022-04-05', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (433, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (473, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (348, '2022-04-05', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (634, '2022-04-05', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (437, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (349, '2022-04-05', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (475, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (476, '2022-04-05', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (478, '2022-04-05', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (532, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (440, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (481, '2022-04-05', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (441, '2022-04-05', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (635, '2022-04-05', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (636, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (637, '2022-04-05', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (639, '2022-04-05', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (640, '2022-04-05', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (557, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (631, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (632, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (570, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (413, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (355, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (430, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (358, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (574, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (436, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (578, '2023-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (584, '2023-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (585, '2023-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (590, '2023-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (581, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (387, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (637, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (607, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (535, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (613, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (608, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (536, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (537, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (538, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (627, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (540, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (628, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (541, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (542, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (633, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (544, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (471, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (545, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (546, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (547, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (634, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (548, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (549, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (550, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (551, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (552, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (451, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (455, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (614, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (458, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (609, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (554, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (462, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (463, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (421, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (425, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (467, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (468, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (469, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (473, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (626, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (610, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (532, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (479, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (481, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (448, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (390, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (399, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (405, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (453, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (454, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (456, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (457, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (533, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (459, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (460, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (464, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (422, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (531, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (470, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (475, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (440, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (441, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (383, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (447, '2023-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (342, '2023-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (396, '2023-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (450, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (418, '2023-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (420, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (428, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (429, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (433, '2023-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (437, '2023-01-01', 3, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (476, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (575, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (576, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (579, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (582, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (619, '2023-01-01', 5, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (583, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (620, '2023-01-01', 5, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (592, '2023-01-01', 5, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (623, '2023-01-01', 5, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (587, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (616, '2023-01-01', 5, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (588, '2023-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (594, '2023-01-01', 5, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (595, '2023-01-01', 5, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (589, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (591, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (593, '2023-01-01', 5, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (615, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (558, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (503, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (559, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (561, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (487, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (490, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (401, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (617, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (491, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (622, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (563, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (494, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (497, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (498, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (499, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (501, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (605, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (504, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (564, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (446, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (506, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (510, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (636, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (527, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (488, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (489, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (402, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (496, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (639, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (426, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (505, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (511, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (513, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (565, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (409, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (603, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (567, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (375, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (438, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (638, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (376, '2023-01-01', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (400, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (445, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (552, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (641, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (642, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (643, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (644, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (645, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (646, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (647, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (648, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (649, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (650, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (651, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (652, '2023-01-01', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (653, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (654, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (655, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (656, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (657, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (658, '2023-01-01', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (659, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (660, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (661, '2023-01-01', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (662, '2023-01-01', 5, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (663, '2023-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (664, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (665, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (666, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (667, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (668, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (669, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (670, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (671, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (672, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (673, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (674, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (675, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (676, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (677, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (678, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (679, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (680, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (681, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (682, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (683, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (684, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (685, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (686, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (687, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (688, '2023-01-01', 2, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (689, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (690, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (691, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (692, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (693, '2023-01-01', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (694, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (695, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (696, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (697, '2023-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (700, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (701, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (702, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (703, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (704, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (705, '2023-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (706, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (707, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (708, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (709, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (710, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (711, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (712, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (713, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (714, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (381, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (534, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (394, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (518, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (398, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (353, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (520, '2023-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (635, '2023-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (569, '2023-01-01', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (415, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (521, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (621, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (522, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (423, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (523, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (572, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (573, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (359, '2023-01-01', 1, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (630, '2023-01-01', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (363, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (526, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (715, '2023-01-01', 2, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (716, '2023-01-01', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (717, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (718, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (719, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (720, '2023-01-01', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (721, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (722, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (723, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (724, '2023-01-01', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (448, '2023-05-17', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (613, '2023-03-11', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (651, '2023-03-11', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (463, '2023-03-11', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (425, '2023-03-11', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (542, '2023-03-11', 3, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (725, '2023-03-11', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (726, '2023-03-11', 2, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (727, '2023-01-01', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (728, '2023-09-07', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (525, '2023-01-01', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (729, '2023-09-30', 3, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (730, '2023-09-30', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (531, '2023-11-02', 3, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (437, '2023-11-02', 3, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (731, '2023-09-30', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (732, '2023-09-30', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (733, '2023-09-30', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (734, '2023-09-30', 1, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (735, '2023-09-30', 1, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (706, '2023-09-30', 1, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (714, '2023-09-30', 1, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (661, '2023-09-30', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (588, '2023-09-30', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (736, '2023-01-02', 2, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (737, '2023-01-10', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (738, '2023-01-10', 4, 3);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (741, '2023-01-10', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (742, '2023-01-10', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (743, '2023-01-10', 4, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (744, '2008-05-17', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (745, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (746, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (747, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (748, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (749, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (750, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (751, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (752, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (753, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (754, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (755, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (756, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (757, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (758, '2023-01-10', 4, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (759, '2023-01-10', 4, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (424, '2024-01-22', 2, 4);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (760, '2024-01-20', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (768, '2024-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (769, '2024-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (770, '2024-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (771, '2024-01-01', 5, 1);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (772, '2024-01-01', 5, 2);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (773, '2024-01-01', 5, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (784, '2024-01-01', 5, 5);
INSERT INTO Student_Grade (Student_id, Effective_dt, School_id, Form_nb) VALUES (774, '2024-01-01', 5, 2);

