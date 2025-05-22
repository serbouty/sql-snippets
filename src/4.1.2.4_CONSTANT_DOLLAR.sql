CREATE TABLE IF NOT EXISTS books (
    name        varchar(80),
    author      varchar(80)
);

-- String content written literally without needing to be escaped.
INSERT INTO books
    VALUES (
        -- Basic and tagged dollar quoting available.
        $$Book's name.$$,
        $MyTag$Author's name.$MyTag$
    );