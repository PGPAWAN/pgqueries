--  Kill all the idle connection:

SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'databasename' AND pid <> pg_backend_pid() AND state in ('idle');
  

SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'databasename' AND pid <> pg_backend_pid() AND state in ('idle') and usename='username';  

-- Terminate particular pid
SELECT pg_terminate_backend(pid);   

-- Terminate query
SELECT pg_cancel_backend(pid);   
