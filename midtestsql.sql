 USE world;
-- 1.  Display the countries with the most cities.
SELECT 
c.name AS country,
c.code,
COUNT(ci.id) AS most_cities
FROM country c
JOIN city ci
ON c.code = ci.countrycode
GROUP BY c.name, c.code
ORDER BY most_cities DESC;

-- 2. Calculate the total city population for each country.
SELECT 
c.name as country,
SUM(ci.population) AS total_city_population
FROM country c
JOIN city ci
ON c.code = ci.countrycode
GROUP BY c.name
ORDER BY total_city_population DESC;

-- 3. Display countries whose capital city has more than [5,000,000] people.
SELECT
c.name as country,
ci.population 
FROM country c
JOIN city ci
ON c.capital = ci.id
WHERE ci.population > 5000000



