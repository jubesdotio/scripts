select s.last_execution_time
from sys.dm_exec_query_stats s
cross apply sys.dm_exec_query_plan (s.plan_handle) p
where object_name(p.objectid, db_id('DB Name')) = '[Proc Name]'