CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[LoginName] VARCHAR(10) NOT NULL,
    [FirstName] VARCHAR(25) NULL, 
    [LastName] VARCHAR(25) NULL, 
    [EMail] VARCHAR(50) NULL, 
    [DOB] DATE NULL, 
    [Gender] VARCHAR(10) NULL, 
    [Password] NCHAR(10) NULL, 
	[Description] NVARCHAR(500) NULL,
    [CreatedBy] INT NOT NULL DEFAULT 1, 
    [CreatedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [ModifiedBy] INT NOT NULL DEFAULT 1, 
    [ModifiedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [Status] BIT NOT NULL DEFAULT 0
)
