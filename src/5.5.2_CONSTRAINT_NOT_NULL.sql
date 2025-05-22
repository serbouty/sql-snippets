-- Equivalent to creating a check constraint.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer NOT NULL,   -- CHECK (column_name IS NOT NULL)
    name            text NOT NULL,
    price           numeric
);

-- Inverse, only specify default behavior.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer NULL,
    name            text NULL,
    price           numeric NULL
);

-- The majority of columns should be marked not null.