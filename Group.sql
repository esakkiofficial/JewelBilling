CREATE TABLE [dbo].[Group]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(500) NULL,
	[CreatedBy] INT NOT NULL DEFAULT 1, 
    [CreatedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [ModifiedBy] INT NOT NULL DEFAULT 1, 
    [ModifiedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [Status] BIT NOT NULL DEFAULT 0
)
