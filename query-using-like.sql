DECLARE @Search nvarchar(50) = '___';

SELECT firstname, lastname, description, salary
from Job
join Employee
	on Employee.JobId = Job.Id
where firstname like @Search