SELECT DISTINCT customerName, postalCode FROM customers;

select * from employees;

SELECT  
  lastname,
  firstname,
  jobtitle
FROM 
  employees 
WHERE 
  jobtitle = 'Sales Rep';
  

SELECT  
  lastname,
  firstname,
  jobtitle
FROM
  employees
WHERE
  jobtitle = 'Sales Rep' AND
  officecode = 1;
  
  
SELECT 
  customername,
  country,
  state
FROM 
  customers 
WHERE 
  country = 'USA' AND state = 'CA';
  
SELECT   customername,
         country,
         state,
         creditlimit
FROM customers
WHERE country = 'USA'
        AND state = 'CA'
        AND creditlimit > 100000;
        
SELECT true OR false AND false;

SELECT (true OR false) AND false;

SELECT 
  customername,
  country
FROM 
  customers 
WHERE country = 'USA' OR country = 'France';


SELECT
  officecode,
  city,
  phone,
  country
FROM
  offices
WHERE
  country IN ('USA','France');
  
SELECT t1.productCode,
       t1.productName,
       t2.textDescription
FROM products t1
INNER JOIN
     productlines t2 ON t1.productLine = t2.productLine;
     

SELECT 
	o.orderNumber,
	p.productName,
    p.productCode,
	p.msrp,
	o.priceEach
FROM products p INNER JOIN orderdetails o
ON p.productCode = o.productCode
WHERE p.productCode = "S10_1678"
AND p.msrp > o.priceEach;

SELECT 
	c.customerNumber, 
    c.customerName,
	o.orderNumber,
    o.status
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber;


SELECT 
	c.customerNumber, c.customerName,
	o.orderNumber, o.status
	FROM customers c
	LEFT JOIN orders o ON c.customerNumber = o.customerNumber
	WHERE orderNumber IS NULL;
