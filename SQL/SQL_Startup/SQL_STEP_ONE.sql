CREATE DATABASE [PiggsPeakProject];
GO

USE [PiggsPeakProject];
GO

CREATE USER [PPP_User] FOR LOGIN [PPP_User] WITH DEFAULT_SCHEMA=[dbo];
GO

CREATE TABLE [dbo].[School](
    [School_id] INT NOT NULL,
    [PrimarySchool_yn] VARCHAR(1) NULL DEFAULT ('N'),
    [PrimaryContactUser_id] INT NULL,
    [School_nm] VARCHAR(3) NOT NULL,
    [Description_tx] VARCHAR(64) NOT NULL,
    [Deleted_yn] VARCHAR(1) NOT NULL DEFAULT ('N'),
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    [Created_tz] VARCHAR(6) NULL,
    [Modified_by] VARCHAR(12) NULL,
    [Modified_dt] DATETIME NULL,
    [Modified_tz] VARCHAR(6) NULL,
    PRIMARY KEY CLUSTERED ([School_id])
);
GO

CREATE TABLE [dbo].[Student](
    [Student_id] INT NOT NULL,
    [Student_nm] VARCHAR(64) NOT NULL,
    [StudentCode_tx] VARCHAR(12) NOT NULL,
    [Homestead_id] INT NULL,
    [Start_dt] DATETIME NULL,
    [First_nm] VARCHAR(64) NULL,
    [Middle_nm] VARCHAR(64) NULL,
    [Last_nm] VARCHAR(64) NULL,
    [Birth_dt] DATETIME NULL,
    [FatherLiving_yn] VARCHAR(1) NULL,
    [FatherAtHome_yn] VARCHAR(1) NULL,
    [FatherWorking_yn] VARCHAR(1) NULL,
    [FatherUnknown_yn] VARCHAR(1) NULL,
    [MotherLiving_yn] VARCHAR(1) NULL,
    [MotherAtHome_yn] VARCHAR(1) NULL,
    [MotherWorking_yn] VARCHAR(1) NULL,
    [MotherUnknown_yn] VARCHAR(1) NULL,
    [School_id] INT NULL,
    [YearFinished_nb] INT NULL,
    [AddressInSchool_nm] VARCHAR(64) NULL,
    [SupportInSchool_nm] VARCHAR(64) NULL,
    [AddressNotInSchool_nm] VARCHAR(64) NULL,
    [SupportNotInSchool_nm] VARCHAR(64) NULL,
    [DistanceFromSchool_tx] VARCHAR(8) NULL,
    [WalkOrBus_tx] VARCHAR(4) NULL,
    [BusFare_nb] INT NULL,
    [FavouriteSubject_nm] VARCHAR(16) NULL,
    [Electricity_yn] VARCHAR(1) NULL,
    [BuysUniform_nm] VARCHAR(64) NULL,
    [NumberAtHome_nb] INT NULL,
    [BreakfastEveryday_tx] VARCHAR(16) NULL,
    [SupperEveryday_tx] VARCHAR(16) NULL,
    [Sponsored_yn] VARCHAR(1) NULL,
    [SponsorStart_dt] DATETIME NULL,
    [Gender_tx] VARCHAR(1) NOT NULL,
    [Phone1_nb] DECIMAL(10, 0) NULL,
    [Phone1_tx] VARCHAR(10) NULL,
    [Phone2_nb] DECIMAL(10, 0) NULL,
    [Phone2_tx] VARCHAR(10) NULL,
    [Email1_tx] VARCHAR(64) NULL,
    [OVC_yn] VARCHAR(1) NOT NULL DEFAULT ('N'),
    [Narritave_tx] VARCHAR(1024) NULL,
    [Aspirations_tx] VARCHAR(1024) NULL,
    [Notes_tx] VARCHAR(1024) NULL,
    [Active_yn] VARCHAR(1) NOT NULL DEFAULT ('Y'),
    [Deleted_yn] VARCHAR(1) NOT NULL DEFAULT ('N'),
    [Version_nb] INT NOT NULL DEFAULT ((1)),
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    [Created_tz] VARCHAR(6) NULL,
    [Modified_by] VARCHAR(12) NULL,
    [Modified_dt] DATETIME NULL,
    [Modified_tz] VARCHAR(6) NULL,
    [Form_nb] INT NULL,
    PRIMARY KEY CLUSTERED ([Student_id])
);
GO

CREATE TABLE [dbo].[Homestead](
    [Homestead_id] INT NOT NULL,
    [Homestead_nm] VARCHAR(50) NOT NULL,
    [Location_tx] VARCHAR(100) NULL,
    [Description_tx] VARCHAR(255) NULL,
    [PrimaryCareGiver_nm] VARCHAR(64) NULL,
    [PrimaryCareGiverPhone_tx] VARCHAR(10) NULL,
    [Active_yn] VARCHAR(1) NOT NULL DEFAULT ('Y'),
    [Deleted_yn] VARCHAR(1) NOT NULL DEFAULT ('N'),
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    [Created_tz] VARCHAR(6) NULL,
    [Modified_by] VARCHAR(12) NULL,
    [Modified_dt] DATETIME NULL,
    [Modified_tz] VARCHAR(6) NULL,
    PRIMARY KEY CLUSTERED ([Homestead_id])
);
GO

CREATE TABLE [dbo].[GradeLevel](
    [GradeLevel_id] INT NULL,
    [Student_id] INT NULL,
    [Effective_dt] DATETIME NULL,
    [School_tx] VARCHAR(3) NULL,
    [Form_nb] INT NULL,
    [Result_tx] VARCHAR(3) NULL,
    [Notes_tx] VARCHAR(64) NULL,
    [Deleted_yn] CHAR(1) NULL,
    [Version_nb] INT NULL,
    [Created_by] VARCHAR(32) NULL,
    [Created_dt] DATETIME NULL,
    [Created_tz] VARCHAR(12) NULL,
    [Modified_by] VARCHAR(32) NULL,
    [Modified_dt] DATETIME NULL,
    [Modified_tz] VARCHAR(12) NULL
);
GO

CREATE TABLE [dbo].[Party](
    [Party_id] SMALLINT NOT NULL,
    [Party_nm] VARCHAR(60) NOT NULL,
    [Login_id] VARCHAR(12) NULL,
    [Password_Hash_tx] VARCHAR(255) NULL,
    [Group_yn] CHAR(1) NOT NULL,
    [Password_Change_dt] DATETIME NULL,
    [Admin_yn] CHAR(1) NOT NULL,
    [Failed_Login_nb] TINYINT NULL,
    [Last_Login_dt] DATETIME NULL,
    [Disabled_yn] CHAR(1) NOT NULL,
    [Failed_Login_dt] DATETIME NULL,
    [Deleted_yn] CHAR(1) NOT NULL,
    [Created_by] VARCHAR(20) NULL,
    [Created_dt] DATETIME NULL,
    [Modified_by] VARCHAR(20) NULL,
    [Created_tz] VARCHAR(6) NULL,
    [Modified_dt] DATETIME NULL,
    [Modified_tz] VARCHAR(6) NULL,
    PRIMARY KEY CLUSTERED ([Party_id])
);
GO

CREATE TABLE [dbo].[Permission](
    [Permission_id] SMALLINT NOT NULL,
    [Permission_nm] VARCHAR(20) NOT NULL,
    [Description_tx] VARCHAR(60) NULL,
    [Permit_yn] CHAR(1) NOT NULL,
    PRIMARY KEY CLUSTERED ([Permission_id])
);
GO

CREATE TABLE [dbo].[Party_Permission](
    [Party_id] SMALLINT NOT NULL,
    [Permission_id] SMALLINT NOT NULL,
    [Permit_yn] CHAR(1) NOT NULL,
    PRIMARY KEY CLUSTERED ([Party_id], [Permission_id]),
    FOREIGN KEY ([Party_id]) REFERENCES [dbo].[Party]([Party_id]),
    FOREIGN KEY ([Permission_id]) REFERENCES [dbo].[Permission]([Permission_id])
);
GO

CREATE TABLE [dbo].[Program](
    [Program_id] INT NOT NULL,
    [Program_nm] VARCHAR(4) NOT NULL,
    [Description_tx] VARCHAR(255) NULL,
    PRIMARY KEY CLUSTERED ([Program_id])
);
GO

CREATE TABLE [dbo].[School_Fee](
    [School_id] INT NOT NULL,
    [Effective_dt] DATETIME NULL,
    [Form_nb] INT NOT NULL,
    [Program_id] INT NOT NULL,
    [OVC_yn] VARCHAR(1) NOT NULL,
    [RegFee_nb] DECIMAL(10, 2) NOT NULL,
    [ExamFee_nb] DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([OVC_yn], [School_id], [Form_nb], [Program_id]),
    FOREIGN KEY ([School_id]) REFERENCES [dbo].[School]([School_id]),
    FOREIGN KEY ([Program_id]) REFERENCES [dbo].[Program]([Program_id])
);
GO

CREATE TABLE [dbo].[School_Note](
    [SchoolNote_id] INT NOT NULL,
    [School_id] INT NOT NULL,
    [Description_tx] VARCHAR(1024) NULL,
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([SchoolNote_id]),
    FOREIGN KEY ([School_id]) REFERENCES [dbo].[School]([School_id])
);
GO

CREATE TABLE [dbo].[Student_Doc](
    [Doc_id] INT NOT NULL,
    [Student_id] INT NULL,
    [Doc] VARBINARY(MAX) NULL,
    PRIMARY KEY CLUSTERED ([Doc_id]),
    FOREIGN KEY ([Student_id]) REFERENCES [dbo].[Student]([Student_id])
);
GO

CREATE TABLE [dbo].[Student_Grade](
    [StudentGrade_id] INT IDENTITY(1,1) NOT NULL,
    [Student_id] INT NOT NULL,
    [School_id] INT NULL,
    [Program_id] INT NULL,
    [Effective_dt] DATETIME NOT NULL,
    [Result_tx] VARCHAR(10) NULL,
    [Notes_tx] VARCHAR(1024) NULL,
    [Deleted_yn] VARCHAR(1) NOT NULL,
    [Version_nb] INT NOT NULL,
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    [Created_tz] VARCHAR(6) NULL,
    [Modified_by] VARCHAR(12) NULL,
    [Modified_dt] DATETIME NULL,
    [Modified_tz] VARCHAR(6) NULL,
    [Form_nb] INT NULL,
    PRIMARY KEY CLUSTERED ([StudentGrade_id]),
    FOREIGN KEY ([Student_id]) REFERENCES [dbo].[Student]([Student_id]),
    FOREIGN KEY ([School_id]) REFERENCES [dbo].[School]([School_id]),
    FOREIGN KEY ([Program_id]) REFERENCES [dbo].[Program]([Program_id])
);
GO

CREATE TABLE [dbo].[Student_Note](
    [StudentNote_id] INT NOT NULL,
    [Student_id] INT NOT NULL,
    [Description_tx] VARCHAR(1024) NULL,
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([StudentNote_id]),
    FOREIGN KEY ([Student_id]) REFERENCES [dbo].[Student]([Student_id])
);
GO

CREATE TABLE [dbo].[Student_Photo](
    [Photo_id] INT NOT NULL,
    [Photo_data] VARBINARY(MAX) NOT NULL,
    [Student_id] INT NULL,
    [Photo_dt] DATETIME NULL,
    [PhotoCrop_tx] VARCHAR(20) NULL,
    PRIMARY KEY CLUSTERED ([Photo_id]),
    FOREIGN KEY ([Student_id]) REFERENCES [dbo].[Student]([Student_id])
);
GO

CREATE TABLE [dbo].[Student_Sibling](
    [Sibling_id] INT NOT NULL,
    [Student_id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Sibling_id]),
    FOREIGN KEY ([Student_id]) REFERENCES [dbo].[Student]([Student_id])
);
GO

CREATE TABLE [dbo].[Student_Sponsor](
    [Student_id] INT NOT NULL,
    [Sponsor_nm] VARCHAR(64) NOT NULL,
    [Effective_dt] DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Student_id], [Effective_dt]),
    FOREIGN KEY ([Student_id]) REFERENCES [dbo].[Student]([Student_id])
);
GO

CREATE TABLE [dbo].[Homestead_Note](
    [HomesteadNote_id] INT NOT NULL,
    [Homestead_id] INT NOT NULL,
    [Description_tx] VARCHAR(1024) NULL,
    [Created_by] VARCHAR(12) NULL,
    [Created_dt] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([HomesteadNote_id]),
    FOREIGN KEY ([Homestead_id]) REFERENCES [dbo].[Homestead]([Homestead_id])
);
GO
