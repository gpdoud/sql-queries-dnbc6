DECLARE @LowSalary int;
DECLARE @HighSalary int;

SET @LowSalary = 85000;
SET @HighSalary = 115000;

SELECT firstname, lastname, description, salary
from Job
join Employee
	on Employee.JobId = Job.Id
where salary >= @LowSalary and salary < @HighSalary;