USE DWHDemo


--Used in package LoadIntoStaging

select * from employee
select * from LogRecorder
select * from staging_employee
select * from DWH_employee



--Testing the tables emloyee, LogRecorder, staginf_employee to see if the SSIS package run

insert into Employee ([Emp_No],[Name],[DOB],[Gender],[Salary],[City]) values
(106,'Neha','1971-12-01','Female',19000,'Goa'),
(107,'Sunita','1958-12-01','Female',50000,'Delhi')

update employee set Salary = 40000 , ActivityDateTime =getdate()
where emp_no =101
--End of the testing

SELECT MAX(LastExtractDateTime) AS LastExtractDateTime
FROM Logrecorder 
WHERE Tablename = 'employee'

SELECT * FROM LogRecorder

--Used in package LoadIntoDWH to update the DWH table of employees

update DWH
SET DWH.Emp_no = Stg.Emp_no, DWH.Name = Stg.Name, DWH.DOB = Stg.DOB, DWH.Gender = STG.Gender, DWH.Salary = Stg.Salary, DWH.City = Stg.City
FROM DWH_employee DWH 
JOIN staging_employee Stg
	ON DWH.Emp_no = Stg.Emp_no

INSERT INTO DWH_employee
SELECT * FROM staging_employee
WHERE Emp_no > (SELECT MAX(Emp_no) FROM DWH_employee)


TRUNCATE TABLE staging_employee -- we prepared the staging table for the future updates