# ETL_Final

This is the final project of this repository, and combines the knowledge from the previous two projects (Basic ETL and Metada) in a more complex ETL Scenario.

Using SSIS I developed a solution which is used daily to import data about Hotels, Employees, Suppliers and Products into the DW. The condition is to name the archive with the files "DataXXXXXXXX", XXXXXXXX is a placeholder for the currentdate. The Solution compare the date from the file name with the current date and if these two matched then will extract the archive from source folder to processed folder. In the processed folder will iterate thru each one of the files too see if they are from the current date or are some hystorical ones. If they are from the current date will load the data into the coresponding tables in our DW and delete their raw data files. FOr the one that not match the current date will log the error into our LogTable error.

The information that need to be loaded into EmployeeDetails folder is a combination from our raw data file and some info already existing in our DW so will need to have a lookup task to combine the sets when loading the data.

Into LogError Table will insert every error we encounter during the runtime of the Solution.

All the filepaths (SourceFolder where we have the archive in the firstplace, ProcessedFolder where we extract the raw data. ArchiveFolder where we move the archive after processing it) are parameterizeds so we can change the paths after deploying the package.

Thats it :)
Emil
