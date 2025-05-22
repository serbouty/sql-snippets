-- Bundle multiple steps into a single operation.

-- Set context for a bank database.
CREATE TABLE IF NOT EXISTS accounts (
    name        varchar(80),
    balance     float
);

CREATE TABLE IF NOT EXISTS branches (
    name        varchar(80),
    balance     float
);

INSERT INTO accounts (name, balance)
    VALUES ('Alice', '1000.00'), ;

INSERT INTO branches (name, balance)
    VALUES ('Bob', '1000.00');

-- Execute statements within a transaction.
BEGIN;
UPDATE accounts SET balance = balance - 100.00
    WHERE name = 'Alice';
UPDATE branches SET balance = balance + 100.00
    WHERE name = 'Bob';
COMMIT;

-- SAVEPOINT and ROLLBACK available.