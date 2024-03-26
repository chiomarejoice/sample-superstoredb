use sample_superstore;
select * from sample_superstore;

-- retrieve all columns for orders where the ship mode is 'second class'
select * from sample_superstore
where ship_mode = 'second class';

-- retrieve the order id and order date for orders where the ship mode is standard class
select order_id,order_date,ship_mode from sample_superstore
where ship_mode = 'standard class';

-- retrieve the customer name and segment for orders with a profit less than 0
select customer_name,segment,profit from sample_superstore
where profit <0;

-- retrieve distinct customer ids for orders with a quantity greater than or equal to 5
select distinct customer_id,quantity from sample_superstore
where quantity >=5;

-- retrieve the total sales for orders from the east region
select region, sum(sales) from sample_superstore
where region = 'east'
group by region;

-- retrieve the average discount for orders with a ship date in 2016
select avg(discount),ship_date from sample_superstore
where ship_date between '01/01/2016' and '31/12/2016'
group by ship_date;

-- retrieve the number of orders for each segment 
select segment, count(segment) from sample_superstore
group by segment;

-- retrieve the maximum profit among all orders.
select max(profit) from sample_superstore;

-- retrieve the product name and quantity for orders where the category is 'technology'
select product_name,quantity, category from sample_superstore
where category = 'technology';

-- retrieve the total sales and profit for each sub_category
select sub_category,profit, sum(sales) from sample_superstore
group by sub_category,profit;

-- 11. retrieve the average discount for orders with a quantity greater than 3
select avg(discount) from sample_superstore
where quantity >3;

-- 12. retrieve the ship date and ship mode for orders with a discount of 20%
select ship_date,ship_mode,discount from sample_superstore
where discount = 0.2;

-- 13. retrieve the number of orders placed in each city
select city,count(order_id) from sample_superstore
group by city;

-- 14. retrieve the average sales for orders with discount less than 50%
select avg(sales) from sample_superstore
where discount = 0.5;
-- 15. retrieve the total profit for orders with a ship mode of 'second class' and a discount of 0
select ship_mode,sum(profit) from sample_superstore
where ship_mode = 'second class' and discount = 0;









