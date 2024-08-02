select * from pg_replication_slots;


select pg_drop_replication_slot('slotname');



select slotname,pg_size_pretty(pg_wal_lsn_diff(pg_current_wal_lsn(),restart_lsn)) as retained_wal,
active,restart_lsn from pg_replication_slots;
