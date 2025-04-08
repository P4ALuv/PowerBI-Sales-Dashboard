
# 🛠 Project Workflow: What I Did

This document outlines the hands-on steps I followed to build the Power BI sales dashboard:

1. **Data Import & Cleaning**
   - Loaded `Sample - Superstore.csv` into Power BI
   - Used Power Query to:
     - Promote headers
     - Convert date and numeric columns to proper types
     - Create a new column: `Ship Duration (Days)`
     - Removed rows with null values in Sales or Profit
     - Dropped unnecessary columns like `Row ID`

2. **Modeling**
   - Ensured data types were consistent
   - Created key measures using DAX:
     - Total Sales
     - Total Profit
     - Profit Margin
     - Order Count
     - Average Order Value

3. **Visualization**
   - Designed a main dashboard with:
     - KPI cards
     - Line chart for monthly trends
     - Bar chart for regional performance
     - Top 10 products chart
     - Slicers for Year, Region, Category, Segment

4. **Documentation & Sharing**
   - Exported DAX measures and Power Query steps
   - Created English and Chinese README files
   - Generated dashboard screenshots
   - Packaged everything into a GitHub-friendly format

> This project demonstrates real Power BI skills including data shaping (M), DAX calculations, dashboard design, and reporting.
