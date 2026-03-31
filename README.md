# End-to-End Retail Data Analytics & Engineering

## 📌 Project Overview
This project is a comprehensive data analysis of a retail superstore, encompassing data extraction, cleaning, database loading, exploratory data analysis (EDA), and interactive visualization. The objective was to identify key drivers of profitability and uncover areas of revenue leakage.

## 🛠️ Tech Stack & Methodology
This project demonstrates a complete data pipeline:
* **Python (Pandas):** Handled data extraction, cleaning, and initial aggregation.
* **MySQL & SQLAlchemy:** Designed a relational database (`superstore_db`) and programmatically loaded the cleaned dataset for persistent storage and querying.
* **Matplotlib & Seaborn:** Conducted deep-dive EDA to visualize trends before dashboarding.
* **Power BI & DAX:** Built an interactive, executive-facing dashboard connected directly to the MySQL database.

## 📁 Repository Structure
* `day1_python_basics.ipynb`: Initial data loading and basic profitability logic.
* `day2_pandas_basics.ipynb`: Deep-dive aggregations, finding top categories, and loss analysis.
* `Linked Python with mysql_load.ipynb`: The data engineering script connecting Pandas to MySQL.
* `day3_visualizations.ipynb`: Python-based visual EDA.
* `Power BI DashBoard.pbix`: The final interactive dashboard file.

## 💡 Key Business Insights

### 1. The Volume vs. Profit Paradox
While Office Supplies account for the vast majority of transaction volume (6,026 orders), **Technology** is the true profit engine, generating **$145,454** at a highly efficient 17.4% margin.

### 2. Identifying Revenue Leaks
The Furniture category is severely underperforming with a 2.4% margin. A drill-down analysis revealed that **Tables** are operating at a net loss of **-$17,725**. 
![Loss Making Categories](Link_to_your_Query_2_PNG)

### 3. The Impact of Discounts
The data clearly shows an inverse correlation between heavy discounting and profitability. Sub-categories with negative margins were consistently those with the highest average discount rates, particularly in the Central region.
![Discount Impact](Link_to_your_Query_4_PNG)

### 4. Regional Performance
The West region is the undisputed leader, generating $108,418 in profit at a nearly 15% margin, while the Central region struggles at roughly 7.9%.
![Sales by Region](Link_to_your_Query_1_PNG)

## 🔗 Live Interactive Dashboard
You can interact with the final Power BI dashboard here: [Insert NovyPro Link]# End-to-End-Retail-Analytics.
