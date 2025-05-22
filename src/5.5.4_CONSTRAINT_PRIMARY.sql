-- Indicate identifier both unique and not null.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer UNIQUE NOT NULL,
    name            text,
    price           numeric
);

CREATE TABLE IF NOT EXISTS products (
    product_no      integer PRIMARY KEY,
    name            text,
    price           numeric
);

-- Same syntax for multiple columns.
CREATE TABLE IF NOT EXISTS products (
    a      integer,
    b      integer,
    c      integer,
    PRIMARY KEY (a, c)
);

-- Defines the default target column(s) for foreign keys.