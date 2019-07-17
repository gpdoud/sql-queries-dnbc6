SELECT firstname, lastname, description, salary
from Job
left join Employee
	on Employee.JobId = Job.Id
order by Description