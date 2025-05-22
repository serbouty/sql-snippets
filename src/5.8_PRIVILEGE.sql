-- SELECT | INSERT | UPDATE | DELETE | TRUNCATE | REFERENCES | TRIGGER | CREATE |
-- CONNECT | TEMPORARY |EXECUTE | USAGE | SET | ALTER SYSTEM | MAINTAIN

-- Assigning privileges.
GRANT UPDATE ON accounts TO joe;

-- Revoke a previously-granted privilege.
REVOKE ALL ON accounts FROM PUBLIC;