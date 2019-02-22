CREATE TABLE [dbo].[Module]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Code] SMALLINT NOT NULL,
    [Name] VARCHAR(50) NULL, 
    [Description] VARCHAR(500) NULL,
	[CreatedBy] INT NOT NULL DEFAULT 1, 
    [CreatedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [ModifiedBy] INT NOT NULL DEFAULT 1, 
    [ModifiedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [Status] BIT NOT NULL DEFAULT 0
)
