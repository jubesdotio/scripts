sp_who2

--Take a SPID from the above and update below

SELECT sql.text AS statement_text

FROM sys.dm_exec_requests  AS req

    CROSS APPLY sys.dm_exec_sql_text(req.sql_handle) as sql

WHERE req.session_id=[Change for SPID from sp_who2]