CREATE DATABASE Superstore_db;

USE Superstore_db;

USE Superstore_db;

SELECT
   Region,
   COUNT(*) AS Total_Orders,
   ROUND(SUM(Sales), 2) AS Total_Sales,
   ROUND(SUM(Profit),2) AS Total_Profit,
   ROUND((SUM(Profit) / SUM(Sales)) *100, 1) AS Profit_Margin_Pct
FROM Sales
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT 
    Sub_Category,
    COUNT(*) as Orders,
    ROUND(SUM(Sales), 2) as Total_Sales,
    ROUND(SUM(Profit), 2) as Total_Profit
FROM sales
GROUP BY Sub_Category
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;

SELECT 
    Customer_Name,
    COUNT(*) as Total_Orders,
    ROUND(SUM(Sales), 2) as Total_Revenue,
    ROUND(SUM(Profit), 2) as Total_Profit
FROM sales
GROUP BY Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 5;

SELECT 
    CASE 
        WHEN Discount = 0 THEN '1. No Discount'
        WHEN Discount <= 0.20 THEN '2. Low (1-20%)'
        WHEN Discount <= 0.40 THEN '3. Medium (21-40%)'
        ELSE '4. High (41%+)'
    END as Discount_Band,
    COUNT(*) as Orders,
    ROUND(AVG(Profit), 2) as Avg_Profit,
    ROUND(SUM(Profit), 2) as Total_Profit
FROM sales
GROUP BY Discount_Band
ORDER BY Discount_Band;

SELECT 
    Year,
    COUNT(*) as Orders,
    ROUND(SUM(Sales), 2) as Total_Sales,
    ROUND(SUM(Profit), 2) as Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 1) as Margin_Pct
FROM sales
GROUP BY Year
ORDER BY Year;

SELECT 
    Ship_Mode,
    COUNT(*) as Orders,
    ROUND(AVG(Delivery_Days), 1) as Avg_Delivery_Days,
    MIN(Delivery_Days) as Fastest,
    MAX(Delivery_Days) as Slowest
FROM sales
GROUP BY Ship_Mode
ORDER BY Avg_Delivery_Days;