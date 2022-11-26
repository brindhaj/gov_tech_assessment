-- Which are the top 10 members by spending

select 
o.membership_id 
sum(od.quantity * od.total_price_per_item) as total_spend

from 
Orderdetails od
INNER JOIN 
Orders o 
ON od.order_id = o.order_id 
group by o.membership_id 
order by sum(od.quantity * od.total_price_per_item) desc 
limit 10 

--	Which are the top 3 items that are frequently brought by members
select 
p.item_name ,
count(o.membership_id) as user_count
from 
Orderdetails od
INNER JOIN 
Orders o 
ON od.order_id = o.order_id 
INNER JOIN 
product p 
ON od.item_no = p.item_no 
group by p.item_name
order by count(o.membership_id) desc 
limit 3
