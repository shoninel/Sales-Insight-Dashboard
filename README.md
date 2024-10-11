# Sales-Insight-Dashboard(using SQL & Power BI)
## Problem Statement:
- Computer hardware and peripheral manufacturer supplies hardware devices to many companies.Their business is growing and need to get an insight about business growth from sales data.
## Aims grid -a project management tool
- Purpose :Dashboard that provides insights about
   - Total Sales,Total profit,Market wise Sales and sales Quantity,
   - Top Customers & Products and sales Trend over years
   - Market wise profit margin ,Market wise contribution of profit towards total profit and Zone wise Profit margin distribution
   - Notification Or hightlight when profit margin of makets goes below threshold.
- Stake holders:
   - IT team & Head, Marketing Team and Head, Data warehousing Team and Head, Data analysis Team and Business Owner
- End result:
   - Detailed Dashboard
- Success Criteria-
  - Successful dashboard, which should help to take decisions and increase sales
  -  Reduce that manual work in Data gathering and save 20% business time and reinvest it to value added activity
- Intecative Dashboard:
  - <a href="https://github.com/shoninel/Sales-Insight-Dashboard/blob/main/Sales_insights.pdf" > Dashboard </a>
## Process
## Data Analysis & Exploration using SQL:
 - select * from sales.transactions;
 - select * from sales.markets;
 - select * from sales.products;
 - select * from sales.customers;

 - SELECT count(*) from sales.customers;
 - select * from  sales.transactions limit 5;
 - select * from  sales.markets limit 5;

-- To find out the transactions from chennai market
- select count(*) from sales.transactions,sales.markets where transactions.market_code=markets.markets_code and markets_name='Chennai';

-- To find out the transactions using USD currency

- select * from  sales.transactions where currency='USD';

-- To find out the transactions for the year 2020
- select count(*) from sales.transactions s join sales.date d on s.order_date=d.date where d.year='2020';


-- To find out the total sales of chennai market for the year 2020
- select year(s.order_date) as orderyear ,m.markets_name,sum(s.sales_amount) as total_sales from sales.transactions s join sales.markets m on s.market_code=m.markets_code where m.markets_name='Chennai' and year(s.order_date)='2020' group by year(s.order_date),m.markets_name;

-- To find out the total products selling in chennai market
- select distinct sales.transactions.product_code from sales.transactions where sales.transactions.market_code='Mark001';

-- To find out the currencies used in transaction
- select distinct currency from sales.transactions;

-- To find out the transactions using INR\r
- select count(*) from sales.transactions where currency='INR\r';

-- To find out the total sales ( using INR\r and USD\r)
- select sum(sales_amount ) from sales.transactions where year(order_date)='2020' and currency='INR\r' or currency='USD\r';

## Data Transformation using Power BI
-	Verified data for any missing values and anomalies, and handled the missing values
-	Ensured that data is consistent and clean with respect to data type data format and values used
-	Created custom columns to get a desirable dimensions and measures
-	Created measures using DAX formulas
-	Created KPIs and different charts 
-	Merge all pivot tables into one dashboard and applied slicers to make dynamic
-	Dashboard
   - <a href="https://github.com/shoninel/Sales-Insight-Dashboard/blob/main/Sales%20dashboard-Key%20Insights.png" > Key_insights Dashbaord </a>
   - <a href="https://github.com/shoninel/Sales-Insight-Dashboard/blob/main/Sales%20Dashboard-Profit%20Analysis.png" > Profit_Analysis Dashboard </a>
   - <a href="https://github.com/shoninel/Sales-Insight-Dashboard/blob/main/Sales%20Dashboard%20Perfomance%20Insights.png" > Perfomance_insights Dashboard </a>



