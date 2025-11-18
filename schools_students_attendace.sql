select * from attendance limit 5
------------
select count(*) as total_students_attendance
from attendance
--------------
select * from attendance 
where school_id = '01M015'
order by enrolled,present desc
limit 10
--------------
select school_id,sum(released) as released_students
from attendance
group by school_id
order by released_students desc
limit 5
----------------
select school_id,sum(absent) as absent_students
from attendance 
group by school_id
order by absent_students desc
limit 10
-------------------
select school_id,date,absent
from attendance
order by absent desc
limit 3
--------------------
select school_id,date,present
from attendance
order by present desc
limit 3
----------
---5. Calculate attendance rate for each record.
select 
	school_id,
	date,
	present,
	enrolled,
	round((present*1.0/enrolled),2) as attendance_rate
from attendance
order by attendance_rate desc
-----
----6. Find average daily attendance (Present) for each school.
select
	school_id,
	round(avg(present),2) as avg_present
from attendance
group by school_id
order by avg_present desc

------
----7. List days where more than 100 students were absent.
select * 
from attendance
where absent > 100

---------
-----------8. Count number of days each school reported attendance.
select 
	school_id,
	count(*) as number_of_days
from attendance
group by school_id
order by number_of_days desc

--------
-----9. Find the percentage of students released each day.

select 
	school_id,
	date,
	enrolled,
	released,
	round((released*1.0/enrolled),2) as released_rate
from attendance
order by released_rate desc

-------
----10. Rank days by attendance rate for each school.
select 
	school_id,
	date,
	enrolled,
	present,
	(present * 1.0 / enrolled) as attendance_rate,
	rank() over (
		partition by school_id
		order by (present * 1.0 / enrolled) desc
	) as attendance_rank
from attendance