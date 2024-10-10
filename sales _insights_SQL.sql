select * from sales.transactions;
select * from sales.markets;
select * from sales.products;
select * from sales.customers;

SELECT count(*) from sales.customers;
select * from  sales.transactions limit 5;
select * from  sales.markets limit 5;

-- To find out the transactions from chennai market

select count(*) from sales.transactions,sales.markets
where transactions.market_code=markets.markets_code and markets_name='Chennai';

-- To find out the transactions using USD currency

select * from  sales.transactions where currency='USD';

select * from sales.date linit5;

-- To find out the transactions for the year 2020
select count(*) from sales.transactions where year(order_date)='2020';

select count(*) from sales.transactions s join sales.date d
on s.order_date=d.date where d.year='2020';

select * from sales.date limit 5;

-- To find out the total sales of chennai market for the year 2020
select year(s.order_date) as orderyear ,m.markets_name,sum(s.sales_amount) as total_sales from sales.transactions s join sales.markets m
on s.market_code=m.markets_code where m.markets_name='Chennai' and year(s.order_date)='2020' group by year(s.order_date),m.markets_name;

select * from sales.transactions limit5;

-- To find out the total products selling in chennai market
select distinct sales.transactions.product_code from sales.transactions where sales.transactions.market_code='Mark001';

-- To find out the currencies used in transaction
select distinct currency from sales.transactions;

-- To find out the transactions using INR\r
select count(*) from sales.transactions where currency='INR\r';

select * from transactions limit 5;

-- To find out the total sales ( using INR\r and USD\r)
select sum(sales_amount ) from sales.transactions where year(order_date)='2020' and currency='INR\r' or currency='USD\r';




