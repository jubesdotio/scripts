-- Get Current DatabaseID
SELECT DB_ID() DatabaseID;
-- Get Current DatabaseName
SELECT DB_NAME() DatabaseName;
-- Get DatabaseName from DatabaseID
SELECT DB_NAME(4) DatabaseID;
-- Get DatabaseID from DatabaseName
SELECT DB_ID('tempdb') DatabaseName;
-- Get all DatabaseName and DBID
SELECT name,database_id
FROM sys.databases;