---Use this to view the text of a given procedure, view or function:

select * from sys.sql_modules where object_id=object_id('<Change Me>')

---Use this to search for text in any procedure, view or function:

SELECT DISTINCT
    o.name AS Object_Name,o.type_desc
    FROM sys.sql_modules        m 
        INNER JOIN sys.objects  o ON m.object_id=o.object_id
    WHERE m.definition Like '%<Change Me>%'
    ORDER BY 2,1