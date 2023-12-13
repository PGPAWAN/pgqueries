select pg_blocking_pids(pid), pid AS blocked_pid, state, query, age(now(),query_start) AS duration from pg_stat_activity where array_length(pg_blocking_pids(pid),1) > 0 order by 1,2;  

select pg_blocking_pids(pid), pid AS blocked_pid, state, age(now(),query_start) AS duration from pg_stat_activity where array_length(pg_blocking_pids(pid),1) > 0 order by 1,2; 
