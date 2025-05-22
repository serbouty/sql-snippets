-- Maintaining the referential integrity by checking matching result.
CREATE TABLE cities (
    name        varchar(80) primary key,
    location    point
);

CREATE TABLE weather (
    city        varchar(80) references cities(name),
    temp_lo     int,
    temp_hi     int,
    prcp        real,
    date        date
);

-- Invalid query, violates foreign key constraint.
INSERT INTO weather VALUES ('Berkeley', 45, 53, 0.0, '1994-11-28');