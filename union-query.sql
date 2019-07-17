SELECT firstname, lastname, description, salary, 'Yes' as 'SR. EXEC'
from Job
join Employee
	on Employee.JobId = Job.Id
where description = 'President' or description = 'VP'
UNION
SELECT firstname, lastname, description, salary, 'No' as 'SR. EXEC'
from Job
join Employee
	on Employee.JobId = Job.Id
where NOT (description = 'President' or description = 'VP')
order by salary