-- Role: admin
-- DROP ROLE IF EXISTS admin;

CREATE ROLE "admin" WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT                 -- Inherit rights from the parent roles.
	REPLICATION             -- Can initiate streaming replication and backups.
	BYPASSRLS;

-- Database: mydb
-- DROP DATABASE IF EXISTS mydb;

CREATE DATABASE mydb
    WITH
    OWNER = admin
    ENCODING = 'UTF8'                   -- Large compatibility, but heavy on memory.
    TEMPLATE = template0                -- Recommended template.
    LC_COLLATE = 'en-US'                -- Operating system's C library.
    LC_CTYPE = 'en-US'                  -- Operating system's C library.
    LOCALE_PROVIDER = 'libc'            -- Operating system's C library.
    TABLESPACE = pg_default             -- Default tablespace.
    CONNECTION LIMIT = -1               -- No limit for concurrent connections.
    IS_TEMPLATE = False;                -- Cannot be cloned.