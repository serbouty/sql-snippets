-- Ignore unmatched rows.
SELECT * FROM weather JOIN cities ON city = name;

-- List output columns explicitly.
SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather JOIN cities ON city = name;

-- Recommended style to avoid duplicate columns.
SELECT weather.city, weather.temp_lo, weather.temp_hi,
    weather.prcp, weather.date, cities.location
    FROM weather JOIN cities ON weather.city = cities.name;

-- Shorthand for join queries.
SELECT *
    FROM weather, cities
    WHERE city = name;