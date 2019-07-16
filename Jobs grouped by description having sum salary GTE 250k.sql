-- Jobs grouped by description having sum salary <= 250k
SELECT Description, Count(*) as 'Count', FORMAT(sum(salary), 'C') as 'Total Salary'
From Employee
Join Job
	on JobId = Job.Id
Group by Description
Having sum(salary) <= 250000
order by 'total salary' desc