# 🛒 Blinkit Sales Analytics Dashboard  
### 📊 Power BI, Excel & SQL Project | Business Intelligence | Retail Analytics

---

> **A retail business intelligence project transforming Blinkit sales data into actionable insights using Power BI, Excel, and SQL.**  
> Designed to support data-driven decision-making across sales, product strategy, and outlet performance.

---

## 💼 About the Project

This project simulates a real-world retail analytics scenario for **Blinkit**, a leading instant delivery platform in India.  
The goal was to analyze historical sales data and identify trends across:

- 📦 Product categories  
- 🏬 Outlet performance (type, size, tier)  
- 🧈 Fat content preferences  
- ⭐ Customer feedback  
- 🧭 Geographic segmentation  

📁 **Deliverables:**  
- 🔹 Dynamic **Power BI Dashboard**  
- 🔹 Static **Excel Dashboard**  
- 🔹 **SQL Queries** for data cleaning, KPI calculation, and segmentation  

---

## 🧠 Analytical Approach

- 📚 **Data Understanding:** Reviewed column-level data and identified key variables (Sales, Ratings, Item Types, Tiers, etc.)  
- 🧹 **Data Cleaning:** Standardized `Item_Fat_Content` categories to avoid inconsistencies (`LF` / `low fat` → `Low Fat`, `reg` → `Regular`)  
- 🧮 **KPI Computation:** Used SQL aggregate functions, Excel formulas, and DAX in Power BI to derive insights  
- 📊 **Visualization Strategy:** Built clean, business-ready dashboards with filters, trend charts, and category comparisons  
- 🎯 **Insight Extraction:** Identified performance patterns impacting revenue and customer satisfaction  

---

## 🛠️ Tools & Technologies Used

| Tool / Platform     | Purpose                                      |
|---------------------|----------------------------------------------|
| 📊 Power BI          | Interactive dashboarding and drilldown KPIs |
| 📈 Microsoft Excel   | Static dashboards, pivot analysis            |
| 🗄️ SQL (PostgreSQL)   | Data cleaning, KPI calculation, segmentation|

---

## 📌 Core Skills Demonstrated

✅ Business Intelligence  
✅ Data Cleaning & Transformation (SQL)  
✅ Retail Analytics  
✅ Dashboard UI/UX Design  
✅ Storytelling with Data  
✅ Functional KPI Development  
✅ Segmentation Analysis  

---

## 📈 Key SQL Queries

**Data Cleaning:**
```sql
UPDATE new_data
SET item_fat_content =
    CASE
        WHEN item_fat_content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN item_fat_content = 'reg' THEN 'Regular'
        ELSE item_fat_content
    END;
```

**KPI Calculations:**
```sql
-- Total Sales
SELECT ROUND(SUM(sales)) AS Total_Sales FROM new_data;

-- Average Sales
SELECT ROUND(AVG(sales), 2) AS Avg_Sales FROM new_data;

-- Number of Items
SELECT COUNT(item_identifier) AS Count_Of_Items FROM new_data;

-- Average Rating
SELECT ROUND(AVG(rating), 2) AS Average_Rating FROM new_data;
```

**Segmentation Examples:**
```sql
-- Sales by Fat Content
SELECT item_fat_content, ROUND(SUM(sales)) AS Total_Sales
FROM new_data
GROUP BY item_fat_content
ORDER BY Total_Sales DESC;

-- Sales by Outlet Type
SELECT outlet_type, ROUND(SUM(sales)) AS Total_Sales
FROM new_data
GROUP BY outlet_type
ORDER BY Total_Sales DESC;
```

---

## 📊 Dashboard Snapshots

### 📊 Power BI Dashboard  
![Power BI Dashboard](./Blinkit_PowerBI.png)

### 📈 Excel Dashboard  
![Excel Dashboard](./Blinkit_excel.png)

---

## 💼 Business Use Cases

- 🔹 Sales strategy optimization by outlet type and region  
- 🔹 Category performance tracking for seasonal planning  
- 🔹 Product assortment strategy (Low Fat vs Regular)  
- 🔹 Outlet performance benchmarking across sizes and tiers  
- 🔹 Executive reporting for CXOs and product managers  

---

## 💡 Why This Project Matters

> This project demonstrates my ability to **extract insights**, **write efficient SQL queries**, **build intuitive dashboards**, and communicate trends in a way that helps **non-technical stakeholders make better business decisions**.  
