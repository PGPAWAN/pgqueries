--  Check wal file
select * from pg_ls_waldir();

-- Wal directory size
select pg_size_pretty(sum(size)) as "Total WAL Disk Usage" from pg_ls_waldir();
