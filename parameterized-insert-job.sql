DECLARE @salary decimal(9,2) = 130000;
DECLARE @desc nvarchar(30) = 'AVP';

INSERT into Job
(Salary, Description) values (@salary, @desc);