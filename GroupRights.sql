CREATE TABLE [dbo].[GroupRights]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [GroupId] INT NOT NULL, 
    [RightsId] INT NOT NULL,
	[CreatedBy] INT NOT NULL DEFAULT 1, 
    [CreatedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [ModifiedBy] INT NOT NULL DEFAULT 1, 
    [ModifiedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [Status] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_GroupRights_Group] FOREIGN KEY ([GroupId]) REFERENCES [Group]([Id]), 
    CONSTRAINT [FK_GroupRights_Rights] FOREIGN KEY ([RightsId]) REFERENCES [Rights]([Id])
)
