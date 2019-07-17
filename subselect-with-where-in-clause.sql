SELECT firstname, lastname, description, salary
from Job
join Employee
	on Employee.JobId = Job.Id
where lastname in (
						SELECT lastname from Employee where firstname = 'Amy'
					);