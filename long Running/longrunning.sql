-- Idle Connection with age
select age(now(),query_start), pid, client_addr, state, substring(query,0,50) from pg_stat_activity where state != 'idle' order by 1 desc;  

All Connection with age:  
select age(now(),query_start), pid, client_addr, state, substring(query,0,50) from pg_stat_activity order by 1 desc; 



--  Long Running Quries

Select pid, now()- query_start as duration, query,state from pg_stat_activity where (now()- query_start) > interval '5 minutes'; 
