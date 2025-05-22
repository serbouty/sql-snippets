-- View: myview
-- DROP VIEW myview;

-- Encapsulate the details behind consistent interfaces.
CREATE VIEW myview AS
    SELECT name, temp_lo, temp_hi, prcp, date, location
        FROM weather, cities
        WHERE city = name;