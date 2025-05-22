-- Price must always be positive.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer,
    name            text,
    price           numeric CHECK (price > 0) -- Negative integer forbidden.
);

-- Specify a named constraint.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer,
    name            text,
    price           numeric CONSTRAINT positive_price CHECK (price > 0)
);

-- Refer to several columns.
CREATE TABLE products (
    product_no          integer,
    name                text,
    -- Column constraint.
    price               numeric CHECK (price > 0),
    discounted_price    numeric CHECK (discounted_price > 0),
    -- Table constraint.
    CHECK (price > discounted_price) -- Return true or null value. 
);

-- Recommended UNIQUE, EXCLUDE or FOREIGN KEY as an alternative.
-- Custom trigger to avoid dump/restore problem.
-- Recommended ALTER TABLE to re-add the constraint then recheck all table rows.