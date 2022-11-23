
# Metadata

This project is about checking the metadata of the files before insertig them into the DB.

Using a Foreach loop Container we loop thru every .csv file from Files folder and checking if the structure of the .csv is the same with what we want. If it is then it will be loaded into DB and using File System Task will be moved into Loaded folder, if not then an error will be filled into LogError Table and the .csv file will be moved into Wrong folder.

That's it :)
Emil
