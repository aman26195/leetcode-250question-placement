# Write your MySQL query statement below

select sell_date,count(distinct product)AS num_sold,
GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
from Activities
group by sell_date
order by sell_date