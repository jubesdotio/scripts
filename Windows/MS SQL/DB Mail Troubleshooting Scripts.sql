--Connect to SQL Instance

EXEC msdb.dbo.sysmail_help_status_sp; --check service status

EXEC msdb.dbo.sysmail_help_queue_sp @queue_type = 'mail'; --check mail queue status

SELECT * FROM msdb.dbo.sysmail_faileditems; --check failed items
SELECT * FROM msdb.dbo.sysmail_unsentitems; --check unsent items
SELECT * FROM msdb.dbo.sysmail_event_log; --check event log

--send test email, update <Change Me>

USE msdb
GO
EXEC sp_send_dbmail @profile_name='<Change Me>',@recipients='<Change Me>',
@subject='This is a test',@body='This is a test email.'

--other information

EXEC msdb.dbo.sysmail_help_configure_sp; --This stored procedure sysmail_help_configure_sp lists the current Database Mail configuration settings for the instance.
EXEC msdb.dbo.sysmail_help_account_sp; --Lists information (except passwords) about Database Mail accounts.
EXEC msdb.dbo.sysmail_help_profile_sp; --Lists information about one or more mail profiles.
EXEC msdb.dbo.sysmail_help_profileaccount_sp; --Lists the accounts associated with one or more Database Mail profiles.
EXEC msdb.dbo.sysmail_help_principalprofile_sp; --Lists information about associations between Database Mail profiles and database principals.