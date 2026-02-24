USE PortfolioProject_MarketingAnalytics
GO

SELECT * FROM dbo.customers;
SELECT * FROM dbo.geography;
GO

-- ************************************************
-- ************************************************

-- Join customers and geography table

SELECT 
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Age,
	c.Gender,
	g.Country,
	g.City
INTO dim_customers
FROM dbo.customers AS c
LEFT JOIN
--RIGHT JOIN
--INNER JOIN
--FULL OUTER JOIN
	dbo.geography as g
ON c.GeographyID = g.GeographyID
