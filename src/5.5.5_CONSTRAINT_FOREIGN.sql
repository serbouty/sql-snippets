-- Referenced table.
CREATE TABLE IF NOT EXISTS products (
    product_no      integer PRIMARY KEY,
    name            text,
    price           numeric
);

-- Referencing table.
CREATE TABLE IF NOT EXISTS orders (
    order_id        integer PRIMARY KEY,
    product_no      integer REFERENCES products, -- Ensure referential integrity.
    quantity        integer
);

-- Referential for a group of columns.
CREATE TABLE IF NOT EXISTS t1 (
    a      integer PRIMARY KEY,
    b      integer,
    c      integer,
    FOREIGN KEY (b, c) REFERENCES other_table (c1, c2)
);

-- Self-referential.
CREATE TABLE IF NOT EXISTS t1 (
    -- Represent nodes of a tree structure.
    node_id         integer PRIMARY KEY,        
    parent_id       integer REFERENCES tree, -- Top-level node.
    name            text
);

-- Many-to-many relationship example.

CREATE TABLE IF NOT EXISTS products (
    product_no      integer PRIMARY KEY,
    name            text,
    price           numeric
);

CREATE TABLE IF NOT EXISTS orders (
    order_id            integer PRIMARY KEY,
    shipping_address    text
);

CREATE TABLE IF NOT EXISTS order_items (
    -- Prevent deletion of a referenced row.
    product_no          integer REFERENCES products ON DELETE RESTRICT,
    -- Remove referencing row when referenced is deleted.
    order_id            integer REFERENCES orders ON DELETE CASCADE,
    quantity            integer,
    PRIMARY KEY         (product_no, order_id)
);

-- NO ACTION to raise an error by default if any referencing rows still exist.

-- SET NULL and SET DEFAULT available for ON UPDATE and ON DELETE.

-- 