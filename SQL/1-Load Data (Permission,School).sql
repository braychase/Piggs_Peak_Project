USE PPP_Web;

DELETE FROM Permission;
DELETE FROM School;
DELETE FROM Program;


SET IDENTITY_INSERT Permission ON
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (1, 'Pref', 'Preferences', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (2, 'Pref.User', 'User Preferences', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (3, 'Pref.Password', 'User Password Change', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (10, 'U', 'User', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (11, 'U.Add', 'Add User', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (12, 'U.Edit', 'Edit User', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (13, 'U.Del', 'Delete User', 'Y');

INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (20, 'UG', 'User Group', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (21, 'UG.Add', 'Add User Group', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (22, 'UG.Edit', 'Edit User Group', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (23, 'UG.Del', 'Delete User Group', 'Y');

INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (104, 'St', 'Student', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (105, 'St.Add', 'Add Student', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (106, 'St.Edit', 'Edit Student', 'Y');
INSERT Permission (Permission_id, Permission_nm, Description_tx, Permit_yn) 	
	VALUES (107, 'St.Del', 'Delete Student', 'Y');
SET IDENTITY_INSERT Permission OFF
go

SET IDENTITY_INSERT Party ON
INSERT INTO Party (Party_id, Party_nm, Login_id, Password_Hash_tx, Group_yn, Admin_yn, Disabled_yn, Deleted_yn, Created_by, Created_dt)
VALUES 
(1, 'Brayden Chase', 'bchase', 'Password123!', 'N', 'Y', 'N', 'N', 'bchase', GETDATE()),
(2, 'Chris Collins', 'ccollins', 'Password123!', 'N', 'Y', 'N', 'N', 'bchase', GETDATE()),
(3, 'Chris Rendell', 'crendell', 'Password123!', 'N', 'Y', 'N', 'N', 'bchase', GETDATE());
SET IDENTITY_INSERT Party OFF

INSERT INTO Party_Permission (Party_id, Permission_id, Permit_yn)
VALUES 
(1, 1, 'Y'),
(2, 1, 'Y'),
(3, 1, 'Y');
GO

SET IDENTITY_INSERT School ON
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (1, 'FHS', 'Fundukuwela High School'); 
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (2, 'PCH', 'Peak Central High School'); 
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (3, 'EHS', 'Enkhaba High School');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (4, 'EKU', 'Ekuvimjelweni High School');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (5, 'LON', 'Londunduma');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (6, 'MBE', 'Mbeka');
INSERT INTO School (School_id, School_nm, Description_tx)
     VALUES (7, 'SIP', 'Siphocosini');
SET IDENTITY_INSERT School OFF
GO

SET IDENTITY_INSERT Program ON
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (1, '*', 'Default'); 
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (2, 'Ag', 'Agriculture'); 
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (3, 'DT', 'Design & Tech'); 
INSERT INTO Program (Program_id, Program_nm, Description_tx)
     VALUES (4, 'HE', 'Home Economics'); 
SET IDENTITY_INSERT Program OFF
go

INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',1,1,'N',5060,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',2,1,'N',4270,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',3,1,'N',4570,1364);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',4,1,'N',6290,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',5,1,'N',5830,3354);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',1,1,'Y',3110,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',2,1,'Y',2320,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',3,1,'Y',2620,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',4,1,'Y',3790,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (1,'2023-01-01',5,1,'Y',3880,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',1,3,'N',5725,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,3,'N',4685,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,3,'N',4505,1402);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,3,'N',5135,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,3,'N',5115,4020);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',1,3,'Y',3775,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,3,'Y',2735,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,3,'Y',2555,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,3,'Y',2635,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,3,'Y',3165,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',1,4,'N',5675,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,4,'N',4735,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,4,'N',4655,1402);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,4,'N',6155,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,4,'N',5135,4020);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',2,4,'Y',2785,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',3,4,'Y',2705,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',4,4,'Y',3655,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (2,'2023-01-01',5,4,'Y',3185,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,2,'N',4670,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,2,'N',4270,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,2,'N',5100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,2,'N',4200,3684);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,2,'Y',2600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,2,'Y',2200,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,3,'N',4720,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,3,'N',4320,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,3,'N',4070,1578);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,3,'N',5100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,3,'N',4250,3684);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,3,'Y',2370,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,3,'Y',2120,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,3,'Y',2600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,3,'Y',2250,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,4,'N',4720,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,4,'N',4320,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,4,'N',4070,1578);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,4,'N',5100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',5,4,'N',4250,3684);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',1,4,'Y',2770,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',2,4,'Y',2370,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',3,4,'Y',2120,350);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (3,'2023-01-01',4,4,'Y',2600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',1,1,'N',4050,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',2,1,'N',3550,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',3,1,'N',3700,2180);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',4,1,'N',4000,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',1,1,'Y',2100,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',2,1,'Y',1600,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',3,1,'Y',1750,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',4,1,'Y',1500,0);
INSERT INTO School_Fee (School_id,Effective_dt, Form_nb,Program_id,OVC_yn, RegFee_nb,ExamFee_nb) VALUES (4,'2023-01-01',5,1,'Y',1850,0);
