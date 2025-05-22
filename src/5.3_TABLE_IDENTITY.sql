CREATE TABLE peoples (
    id          bigint GENERATED ALWAYS AS IDENTITY,
    name        text,
    address     text
);

-- Generate values for the id column starting at 1.
INSERT INTO peoples (name, address) VALUES ('A', 'foo'); -- id = 1
INSERT INTO peoples (name, address) VALUES ('B', 'bar'); -- id = 2