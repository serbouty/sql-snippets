CREATE TABLE IF NOT EXISTS cities (
    name        varchar(80),
    location    point           -- Two-dimensional building block for geometric types.
);

CREATE TABLE IF NOT EXISTS weather (
	city		varchar(80),
	temp_lo		int,
	temp_hi		int,
	prcp		real,			-- Store single precision floating-point numbers.
	date		date
);