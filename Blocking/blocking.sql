select pg_blocking_pids(pid), pid AS blocked_pid, state, query, age(now(),query_start) AS duration from pg_stat_activity where array_length(pg_blocking_pids(pid),1) > 0 order by 1,2;  

select pg_blocking_pids(pid), pid AS blocked_pid, state, age(now(),query_start) AS duration from pg_stat_activity where array_length(pg_blocking_pids(pid),1) > 0 order by 1,2; 


select a.pi,a.usename,a.query,b.pi as blocking_pid,b.query as blocking_query from pg_stat_activity a join pg_stat_activity b on b.pid=any(pg_blocking_pids(activity.pid));
