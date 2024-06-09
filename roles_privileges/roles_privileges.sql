

--read_only roles
GRANT USAGE on SCHEMA public to role_ro;
GRANT SELECT ON ALL TABLES IN SCHEMA public to role_ro;
GRANT USAGE,SELECT ON ALL SEQUENCES IN SCHEMA public to role_ro;
GRANT EXECUTE on ALL FUNCTIONS IN SCHEMA public to role_ro;
ALTER DEFAULT PRIVILIEGES FOR ROLE owner_role IN SCHEMA public GRANT SELECT ON TABLES to role_ro;
ALTER DEFAULT PRIVILIEGES FOR ROLE owner_role IN SCHEMA public GRANT USAGE,SELECT ON SEQUENCES to role_ro;
ALTER DEFAULT PRIVILIEGES FOR ROLE owner_role IN SCHEMA public GRANT EXECUTE ON FUNCTIONS to role_ro;



--read-write roles
GRANT USAGE on SCHEMA public to role_rw;
GRANT SELECT,INSERT,UPDATE  ON ALL TABLES IN SCHEMA public to role_rw;
GRANT SELECT,INSERT,UPDATE ON ALL SEQUENCES IN SCHEMA public to role_rw;
GRANT EXECUTE on ALL FUNCTIONS IN SCHEMA public to role_rw;
ALTER DEFAULT PRIVILIEGES FOR ROLE owner_role IN SCHEMA public GRANT SELECT ON TABLES to role_rw;
ALTER DEFAULT PRIVILIEGES FOR ROLE owner_role IN SCHEMA public GRANT USAGE,SELECT ON SEQUENCES to role_rw;
ALTER DEFAULT PRIVILIEGES FOR ROLE owner_role IN SCHEMA public GRANT EXECUTE ON FUNCTIONS to role_rw;