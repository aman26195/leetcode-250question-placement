# Write your MySQL query statement below
(select "Low Salary" as category, count(*) accounts_count from Accounts where income<20000) 
union
(select "Average Salary" as category, count(*) accounts_count from Accounts where 20000<= income and income<=50000)
union
(select "High Salary" as category, count(*) accounts_count from Accounts where 50000<income)