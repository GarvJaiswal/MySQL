ALTER FUNCTION getEmployeeDetails(@salary decimal)
RETURNS TABLE
AS
RETURN
	SELECT * FROM LMS WHERE SALARY=@salary;
GO


SELECT * FROM getEmployeeDetails(10520000.00);