-- Subselect of avg salary
SELECT firstname, lastname, description, salary
from Employee
join job
	on job.Id = JobId
where salary > (
					SELECT AVG(salary) as 'Salary'
					from Employee
					join job
						on job.Id = JobId
				)
