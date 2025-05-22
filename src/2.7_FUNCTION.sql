-- Can use count(), sum(), avg(), max(), min().
SELECT max(temp_lo) FROM weather;

-- Cannot use max() after the WHERE clause, own computation needed.
SELECT city FROM weather
    WHERE temp_lo = (SELECT max(temp_lo) FROM weather);

-- Grouping results to one output per city with the GROUP BY clause.
SELECT city, count(*), max(temp_lo)
    FROM weather
    GROUP BY city;

-- Using aggregate functions with the HAVING clause, WHERE only determine rows.
SELECT city, count(*), max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;

-- Similar to the WHERE clause, FILTER support aggregate functions. 
SELECT city, count(*) FILTER (WHERE temp_lo < 45), max(temp_lo)
    FROM weather
    GROUP BY city;