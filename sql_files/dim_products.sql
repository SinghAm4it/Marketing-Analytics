USE PortfolioProject_MarketingAnalytics
GO

SELECT 
	* 
FROM dbo.products;
GO

-- ************************************************
-- ************************************************

-- Categorize products based on price
SELECT 
	ProductID,
	ProductName,
	Price,
	CASE
		WHEN Price < 50 THEN 'Low'
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		ELSE 'High'
	END AS PriceCategory
INTO dim_products
FROM dbo.products;
GO

-- ************************************************
-- ************************************************

-- Count Products in Each Category

WITH Category AS (
	SELECT 
	ProductID,
	ProductName,
	Price,
	CASE
		WHEN Price < 50 THEN 'Low'
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		ELSE 'High'
	END AS PriceCategory
FROM dbo.products
)
SELECT 
	PriceCategory,
	COUNT(ProductID) AS ProductCount
FROM Category
GROUP BY PriceCategory;