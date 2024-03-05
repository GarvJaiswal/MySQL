CREATE OR ALTER TRIGGER creatingTable
ON DATABASE
FOR CREATE_TABLE
AS
BEGIN
	PRINT 'NEW TABLE CREATED';
END
go

SELECT * INTO newTABLE FROM LMS;
go

CREATE OR ALTER TRIGGER renameTable
ON DATABASE
FOR RENAME
AS
BEGIN
	PRINT 'TABLE RENAMED'
END;
go

sp_rename 'newTABLE','oldTable';
GO

CREATE OR ALTER TRIGGER deleteTable
ON DATABASE
FOR DROP_TABLE
AS
BEGIN
	PRINT 'TABLE DELETED'
END;
go

DROP TABLE oldTable;
