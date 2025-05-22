-- Add unmatched rows of the left table.
SELECT *
    FROM weather LEFT OUTER JOIN cities ON weather.city = cities.name;

-- Add unmatched rows of the right table.
SELECT *
    FROM weather RIGHT OUTER JOIN cities ON weather.city = cities.name;

-- Perform inner join and outer joins on the same query.
SELECT *
    FROM weather FULL OUTER JOIN cities ON weather.city = cities.name;