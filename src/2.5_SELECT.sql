-- Short command for all columns.
SELECT * FROM weather;

-- Long command for all columns.
SELECT city, temp_lo, temp_hi, prcp, date FROM weather;

-- Using expression with the AS clause.
SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;

-- WHERE clause using a boolean, AND|OR|NOT allowed.
SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;

-- Return result in sorted order.
SELECT * FROM weather
    ORDER BY city, temp_lo;

-- Remove duplicates from result.
SELECT DISTINCT city
    FROM weather;