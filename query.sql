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

SELECT *
FROM (SELECT brand, AVG(max_price) AS p FROM shoes_one 
GROUP BY brand
ORDER BY p DESC)
INNER JOIN (SELECT brand, AVG(max_price) AS p FROM shoes_two 
GROUP BY brand
ORDER BY p DESC)
ON shoes_one.brand = shoes_two.brand;