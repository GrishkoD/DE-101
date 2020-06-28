//Total Sales
select count(*)
from orders 

//Total Profit
select sum(profit)
from orders 

//Profit per order
select order_id, sum(profit) 
from orders 
group by order_id 

//Profit Ratio
select sum(profit)/count(order_id)
from orders 


//Sales per Customer
select customer_id, count(order_id) 
from orders 
group by customer_id

//Avg. Discount
select AVG(discount)
from orders 

//Monthly Sales by Segment 
SELECT EXTRACT(MONTH from order_date) as month, count(order_id)
from orders
group by month 

//Montly Sales by Product Category (табличка и график
select category, count(order_id)
from orders
group by category 

//Sales by Product Category over time (Продажи по категориям)
SELECT EXTRACT(MONTH from order_date) as month, category, count(order_id) as c
from orders
group by month, category 
order by c desc

//Sales and  Profit by Customer
select customer_name, count(order_id), sum(profit) as sum 
from orders 
group by customer_name
order by sum desc

//Sales per region
select region, count(order_id) as c
from orders 
group by region
order by c desc
