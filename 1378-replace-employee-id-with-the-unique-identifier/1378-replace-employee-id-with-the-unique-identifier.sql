# Write your MySQL query statement below
select c.unique_id, e.name
from Employees e
left join EmployeeUNI c
ON c.id=e.id
