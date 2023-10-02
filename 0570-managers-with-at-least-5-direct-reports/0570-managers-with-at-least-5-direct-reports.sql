# Write your MySQL query statement below
select e2.name
from Employee e1
inner join employee e2
on e1.managerId=e2.id
group by e1.managerId
having count(e1.id)>=5
# Select m.name
# from employee as e
# inner join employee as m
# on e.managerId=m.id
# group by e.managerId 
# having count(e.id)>=5