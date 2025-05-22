CREATE TABLE IF NOT EXISTS products (
    product_no integer,
    name text,
    price numeric           -- Store fractional components for monetary types.
);

CREATE TABLE IF NOT EXISTS products (
    product_no integer,
    name text,
    price numeric DEFAULT 9.99      -- Set default value instead of null.
);