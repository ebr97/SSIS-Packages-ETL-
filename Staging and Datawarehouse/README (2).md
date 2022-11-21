
# Staging and Datawarehouse

This is a small project where we can see the basics of the ETL using SSIS.

DWH_Creation file can be used to create our infrastructure. Here you will find the code used to create our four tables: employee, LogRecord, staging_employee and DWH_employee. The employee table play the role of our OLTP DB where we can find all the transactions made on a daily basis, stagin_employee is our Staging DB where we insert the data before inserting in DW, here is used to track all the changes made in the employee table, The LogRecord table is used in our SSIS package to load into the staging only the records that meet the condition: if there are any changes between the last update and the moment at we run the package then update the staging_employee. 

SSIS_Codes file contains a small test scenario where we update a record an insert two more into employee table in order to test our SSIS Package. Also contains some of the SQL code used into the SSIS Solution.

DeltaExtraction folder is the SSIS Solution that contains the two developed packages: LoadingIntoStaging and LoadingIntoDW.

In the upcoming files from this repository you'll encounter two more project with a lot more action regarding ETL process.

Thanks,
Emil