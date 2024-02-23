ALTER PROCEDURE proc_Details
AS
BEGIN
	SELECT Name,Salary
	FROM LMS
END
GO
EXEC proc_Details;
GO

ALTER PROCEDURE proc_paraDetails(@department INTEGER)
AS
BEGIN
	SELECT NAME,SALARY
	FROM LMS
	INNER JOIN MACHINELOGS
	ON LMS.DEPTID=MACHINELOGS.DeptId
	WHERE LMS.DEPTID=@department;
END;
GO

EXEC proc_paraDetails @department=10;
