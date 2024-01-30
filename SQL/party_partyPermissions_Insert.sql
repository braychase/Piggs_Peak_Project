INSERT INTO Party (Party_id, Party_nm, Login_id, Password_Hash_tx, Group_yn, Admin_yn, Disabled_yn, Deleted_yn, Created_by, Created_dt)
VALUES 
(1, 'Brayden Chase', 'bchase', 'Password123!', 'N', 'Y', 'N', 'N', 'bchase', GETDATE()),
(2, 'Chris Collins', 'ccollins', 'Password123!', 'N', 'Y', 'N', 'N', 'bchase', GETDATE()),
(3, 'Chris Rendell', 'crendell', 'Password123!', 'N', 'Y', 'N', 'N', 'bchase', GETDATE());

INSERT INTO Party_Permission (Party_id, Permission_id, Permit_yn)
VALUES 
(1, 1, 'Y'),
(2, 1, 'Y'),
(3, 1, 'Y');