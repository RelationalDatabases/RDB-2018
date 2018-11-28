SELECT COUNT(c.customerNumber)
FROM customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
WHERE o.status = 'Resolved';

select * from orders;

SELECT lastName, 
	firstName
	from employees
	where employeeNumber= min(employeeNumber);

select * from employees;

SELECT MAX(lifeExpectancy)
AS 'Lowest life expentancy'
FROM country;

SELECT MAX(Name)
FROM country;

SELECT MAX(orderDate)
FROM orders;

select * from graduates;

SELECT SUM(SurfaceArea)
FROM country
WHERE region = 'Caribbean';

SELECT SUM(creditLimit)
FROM customers
WHERE state = 'NSW';

SELECT AVG(creditLimit)
FROM customers
WHERE state = 'NSW';


SELECT SUM(SurfaceArea)
FROM country
WHERE region = 'Caribbean';

SELECT AVG(SurfaceArea), MIN(surfaceArea), SUM(surfaceArea)
FROM country
WHERE continent = 'Europe';

SELECT COUNT(state)
FROM customers;

select DISTINCT continent from country;

select DISTINCT state from customers;

select DISTINCT region from country;

select DISTINCT price from food_item;

SELECT COUNT(*)
FROM customers;

SELECT continent, AVG(SurfaceArea), MIN(surfaceArea), SUM(surfaceArea)
FROM country
GROUP BY continent;

SELECT name, max(population)
FROM city
GROUP BY countrycode;

SELECT city, state, MAX(creditLimit)
FROM customers
GROUP BY state;

SELECT city, AVG(creditLimit)
FROM customers
WHERE state != 'NSW'
GROUP BY city;

select language, max(percentage)
from countrylanguage
group by language;

select language, p