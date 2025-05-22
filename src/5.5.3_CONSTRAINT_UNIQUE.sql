-- Written as a column constraint.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer UNIQUE,
    name            text,
    price           numeric
);

-- Written as a table constraint.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer,
    name            text,
    price           numeric,
    UNIQUE (product_no)
);