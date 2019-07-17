-- this UPDATE changes all employees that are Asst Directors
-- to Director jobs

update employee set
jobid = (select id from job where Description = 'Director')
where JobId = (select id from job where Description = 'Asst Director')

select id, firstname, lastname, jobid
from employee
where jobid = (select id from job where description = 'Asst Director');

--select * from job
delete from job
where Id = (select id from job where Description = 'Asst Director')