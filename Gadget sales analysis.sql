SELECT * FROM sakila.`gadget database`; 

-- highest selling products
select product, sum(TotalPrice) as Total_Revenue
from sakila.`gadget database`
group by product
order by Total_Revenue DESC
LIMIT 3; 

-- delivered orders
select * from sakila.`gadget database`
where OrderStatus = 'delivered';

-- BEST REFERRAL SOURCE
SELECT ReferralSource, sum(TotalPrice) as Revenue
from sakila.`gadget database`
group by ReferralSource
order by Revenue desc; 

-- count total orders
select count(ï»¿OrderID) as total_orders from sakila.`gadget database`; 

-- highest and lowest sales
select max(totalprice) as highest_sale,
min(TotalPrice) as lowest_sale from sakila.`gadget database`; 

-- best payment method
select PaymentMethod, count(ï»¿OrderID) as total_transactions
from sakila.`gadget database`
group by PaymentMethod
order by total_transactions desc;
