-- Single quotes mandatory for non-numeric values.
INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

-- The point type requires a coordinate pair as input.
INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

-- Recommended style.
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
 VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

-- Missing value.
INSERT INTO weather (date, city, temp_hi, temp_lo)
 VALUES ('1994-11-29', 'Hayward', 54, 37);