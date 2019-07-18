DECLARE @index int = 0;
DECLARE @sum int = 0;

WHILE @index <= 15
BEGIN
	SET @sum = @sum + @index;
	SET @index = @index + 1;
END
PRINT 'The sum of 1 to 15 is ' + CAST(@sum as nvarchar(10));