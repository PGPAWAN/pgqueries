--  Vacuum phase: 

 select v.pid, v.datid,v.datname,c.relname,v.relid,v.phase,v.heap_blks_total,v.heap_blks_scanned,v.max_dead_tuples, v.num_dead_tuples,a.query AS query from pg_stat_progress_vacuum v,pg_class c,pg_stat_activity a where v.relid=c.oid and v.pid=a.pid;  
--
--  Vacuum check: 
 SELECT relname AS TableName,n_live_tup AS LiveTuples,n_dead_tup AS DeadTuples,last_vacuum,last_autovacuum,last_analyze,last_autoanalyze from pg_stat_user_tables where schemaname='public';  
