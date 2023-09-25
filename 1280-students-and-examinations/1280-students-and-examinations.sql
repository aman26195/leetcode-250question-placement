
with cte AS
(select*
from Students 
cross join Subjects),
cte2 AS
(select  student_id,subject_name,COUNT(subject_name) AS count
from examinations 
group by student_id,subject_name)
select cte.student_id,cte.student_name,cte.subject_name,CASE WHEN count IS NOT NULL THEN count 
ELSE 0 END AS attended_exams
from cte 
left join cte2
on cte.student_id=cte2.student_id
AND cte.subject_name=cte2.subject_name
ORDER BY cte.student_id,cte.subject_name
