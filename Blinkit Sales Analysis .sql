-- View all data
SELECT * 
FROM new_data;

-- Cleaning Data
UPDATE new_data
SET item_fat_content =
    CASE
        WHEN item_fat_content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN item_fat_content = 'reg' THEN 'Regular'
        ELSE item_fat_content 
    END;
	
SELECT DISTINCT Item_Fat_Content FROM new_data

-- KPI's

-- 1) Total Sales
SELECT ROUND(SUM(sales)) AS Total_Sales
FROM new_data;

-- 2) Average Sales
SELECT ROUND(AVG(sales), 2) AS Avg_Sales
FROM new_data;

-- 3) Number Of Items
SELECT COUNT(item_identifier) AS Count_Of_Items
FROM new_data;

-- 4) Average Rating
SELECT ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data;

-- 5) Total Sales by Fat Content
SELECT  
    item_fat_content,
    ROUND(SUM(sales)) AS Total_Sales,
    ROUND(AVG(sales)) AS Avg_Sales,
    COUNT(item_identifier) AS Item_Count,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data 
GROUP BY item_fat_content
ORDER BY Total_Sales DESC;

-- 6) Total Sales by Item Type
SELECT 
    item_type,
    ROUND(SUM(sales)) AS Total_Sales,
    ROUND(AVG(sales)) AS Avg_Sales,
    COUNT(item_identifier) AS Item_Count,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data 
GROUP BY item_type
ORDER BY Total_Sales DESC;

-- 7) Fat Content by Outlet for Total Sales
SELECT 
    outlet_location_type,
    item_fat_content,
    ROUND(SUM(sales)) AS Total_Sales,
    ROUND(AVG(sales)) AS Avg_Sales,
    COUNT(item_identifier) AS Item_Count,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data 
GROUP BY outlet_location_type, item_fat_content
ORDER BY Total_Sales DESC;

-- 8) Total Sales by Outlet Establishment Year
SELECT 
    outlet_establishment_year,
    ROUND(SUM(sales)) AS Total_Sales,
    ROUND(AVG(sales)) AS Avg_Sales,
    COUNT(item_identifier) AS Item_Count,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data 
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year ASC;

-- 9) Percentage Sales by Outlet Size
SELECT 
    outlet_size,
    ROUND(SUM(sales), 2) AS Total_Sales,
    ROUND(SUM(sales) * 100.0 / SUM(SUM(sales)) OVER (), 2) AS Sales_Percentage
FROM new_data
GROUP BY outlet_size
ORDER BY Total_Sales DESC;

-- 10) Sales by Outlet Location
SELECT 
    outlet_location_type,
    ROUND(SUM(sales)) AS Total_Sales,
    ROUND(AVG(sales)) AS Avg_Sales,
    COUNT(item_identifier) AS Item_Count,
    ROUND(SUM(sales) * 100.0 / SUM(SUM(sales)) OVER (), 2) AS Sales_Percentage,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data 
GROUP BY outlet_location_type
ORDER BY Total_Sales DESC;

-- 11) All Metrics by Outlet Type
SELECT 
    outlet_type,
    ROUND(SUM(sales)) AS Total_Sales,
    ROUND(AVG(sales)) AS Avg_Sales,
    COUNT(item_identifier) AS Item_Count,
    ROUND(SUM(sales) * 100.0 / SUM(SUM(sales)) OVER (), 2) AS Sales_Percentage,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM new_data 
GROUP BY outlet_type
ORDER BY Total_Sales DESC;
