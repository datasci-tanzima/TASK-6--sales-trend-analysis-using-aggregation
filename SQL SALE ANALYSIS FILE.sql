CREATE DATABASE sales_analysis2;
USE sales_analysis;
CREATE TABLE orders15 (
ORDERNUMBER INT,
ORDERDATE DATE,
STATUS VARCHAR(50),
PRODUCTLINE VARCHAR(50),
OTYORDERED INT,
PRICEEACH DECIMAL(10,2),
SALES DECIMAL(10,2),
CUSTOMERNAME VARCHAR (100),
COUNTRY VARCHAR (50));
select* from orders15;
INSERT INTO orders15 VALUES 
(10107, '2003-01-06', 'Shipped', 'Motorcycles', 30, 95.70, 2871.00, 'Land of Toys Inc.', 'USA');
INSERT INTO orders15 VALUES 
(10121, '2003-01-09', 'Shipped', 'Motorcycles', 34, 81.35, 2765.90, 'Reims Collectables', 'France');
INSERT INTO orders15 VALUES 
(10134, '2003-01-10', 'Shipped', 'Classic Cars', 41, 94.74, 3884.34, 'Toys4GrownUps.com', 'USA');
INSERT INTO orders15 VALUES 
(10145, '2003-01-11', 'Shipped', 'Planes', 45, 53.90, 2425.50, 'Collectable Mini Designs Co.', 'USA');
INSERT INTO orders15 VALUES 
(10159, '2003-01-12', 'Shipped', 'Classic Cars', 49, 100.00, 4900.00, 'Auto Canal Petit', 'France');
INSERT INTO orders15 VALUES 
(10168, '2003-01-13', 'Shipped', 'Trains', 36, 77.34, 2784.24, 'La Rochelle Gifts', 'France');
INSERT INTO orders15 VALUES 
(10180, '2003-01-14', 'Shipped', 'Vintage Cars', 29, 100.00, 2900.00, 'Marseille Mini Autos', 'France');
INSERT INTO orders15 VALUES 
(10192, '2003-01-15', 'Shipped', 'Trucks and Buses', 50, 62.34, 3117.00, 'Toys of Finland, Co.', 'Finland');
INSERT INTO orders15 VALUES 
(10203, '2003-01-16', 'Shipped', 'Ships', 25, 95.00, 2375.00, 'Gift Depot Inc.', 'USA');
INSERT INTO orders15 VALUES 
(10215, '2003-01-17', 'Shipped', 'Motorcycles', 44, 80.00, 3520.00, 'Asian Shopping Network, Co', 'Japan');
select* from orders15;

--QUERY1: TOTAL SALES
SELECT SUM(SALES) AS total_sales FROM orders15;

---QUERY2:  AVERAGE SALES PER PRODUCT LINE
SELECT COUNTRY, SUM(SALES) AS total_sales
FROM orders15
GROUP BY COUNTRY
ORDER BY total_sales DESC;

--QUERY3: SALES BY PRODUCTLINE
SELECT PRODUCTLINE, SUM(SALES) AS total_sales
FROM orders15
GROUP BY PRODUCTLINE
ORDER BY total_sales DESC;

--QUERY4: AVERAGE SALES PER ORDER
SELECT AVG(SALES) AS avg_sales_per_order FROM orders15;

--QUERY5: HIGHEST SALES ORDER
SELECT * FROM orders15
ORDER BY SALES DESC
LIMIT 1;

--QUERY6: COUNTRY WITH MOST ORDERS
SELECT COUNTRY, COUNT(*) AS total_orders
FROM orders15
GROUP BY COUNTRY
ORDER BY total_orders DESC;