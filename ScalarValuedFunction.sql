CREATE FUNCTION salary(@name VARCHAR(20))
RETURNS DECIMAL
BEGIN
	DECLARE @sal Decimal
	SELECT @sal=SALARY FROM LMS WHERE Name=@name;
	RETURN @sal;
END;
GO
SELECT dbo.salary('Garv');