CREATE TABLE [dbo].[UserGroup]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    [GroupId] INT NOT NULL,
	[CreatedBy] INT NOT NULL DEFAULT 1, 
    [CreatedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [ModifiedBy] INT NOT NULL DEFAULT 1, 
    [ModifiedAt] DATETIME NOT NULL DEFAULT GetDate(), 
    [Status] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_UserGroup_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]), 
    CONSTRAINT [FK_UserGroup_Group] FOREIGN KEY ([GroupId]) REFERENCES [Group]([Id])
)
