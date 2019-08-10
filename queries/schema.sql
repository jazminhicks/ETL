CREATE TABLE shoes_one (
	id SERIAL PRIMARY KEY,
	Brand varchar(50),
	Categories varchar, 
	Color varchar,
	Max_Price decimal, 
	Min_Price decimal,
	Website varchar,
	Date date
	);
	
	
CREATE TABLE shoes_two (
	id SERIAL PRIMARY KEY,
	Brand varchar(50),
	Categories varchar, 
	Color varchar,
	Max_Price decimal, 
	Min_Price decimal,
	Website varchar,
	Date date
	);
	
SELECT * FROM shoes_two;
