SELECT owner_sid FROM sys.databases WHERE database_id=DB_ID()
SELECT sid FROM sys.database_principals WHERE name=N'dbo'