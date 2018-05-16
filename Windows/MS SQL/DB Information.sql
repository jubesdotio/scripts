--https://msdn.microsoft.com/en-us/library/ms178534.aspx

SELECT name as 'DB Name',compatibility_level as 'Compatibility Level',recovery_model_desc as 'Recovery Model',state_desc as 'State' FROM sys.databases

--https://msdn.microsoft.com/en-us/library/ms186782.aspx

SELECT db_name(database_id) as 'DB Name',name,type_desc as 'Type',physical_name as 'Where Am I?' FROM sys.master_files