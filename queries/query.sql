/* Query to check sucessful load */

SELECT * FROM shoes_one;

SELECT * FROM shoes_two;


-- group by brands --

SELECT brand, AVG(max_price) AS p FROM shoes_one 
GROUP BY brand
ORDER BY p DESC;

SELECT brand, AVG(max_price) AS p FROM shoes_two 
GROUP BY brand
ORDER BY p DESC;

-- Join tables on brand --

SELECT brand, AVG(max_price), AVG(min_price) FROM shoes_one 
GROUP BY brand
UNION
SELECT brand, AVG(max_price), AVG(min_price)  FROM shoes_two
GROUP BY brand;
