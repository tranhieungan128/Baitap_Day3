-----Bài tập ngày 11
---ex1
select COUNTRY.Continent,
floor (avg (CITY.Population)) as average 
from CITY
inner join COUNTRY
on CITY.CountryCode = COUNTRY.Code
group by COUNTRY.Continent
---ex2
SELECT 
round (count(texts.email_id)::decimal / count(distinct emails.email_id), 2) as activation_rate
FROM emails
left join texts 
on emails.email_id=texts.email_id
and texts.signup_action = 'Confirmed';
---ex3
SELECT 
  age.age_bucket, 
  ROUND(100.0 * 
    SUM(activities.time_spent) FILTER (WHERE activities.activity_type = 'send')/
      SUM(activities.time_spent),2) AS send_perc, 
  ROUND(100.0 * 
    SUM(activities.time_spent) FILTER (WHERE activities.activity_type = 'open')/
      SUM(activities.time_spent),2) AS open_perc
FROM activities
INNER JOIN age_breakdown AS age 
  ON activities.user_id = age.user_id 
WHERE activities.activity_type IN ('send', 'open') 
GROUP BY age.age_bucket;
---ex4
with supercloud as (
SELECT 
a.customer_id,
count (distinct b. product_category) as unique_count
FROM customer_contracts as a
left join products as b
on a.product_id	= b.product_id
group by a.customer_id
)
select customer_id
from supercloud 
where unique_count = (
  select count (distinct product_category)
  from products)
order by customer_id
---ex5
select m.employee_id ,m.name,COUNT(e.employee_id ) as reports_count,ROUND(AVG(e.age*1.0),0) as average_age 
from Employees e
join Employees m 
on e.reports_to =m.employee_id 
group by m.employee_id ,m.name
ORDER BY employee_id
---ex6
select
mng.employee_id,
mng.name,
count(emp.employee_id) as reports_count,
round(avg(emp.age*1.0), 0) as average_age
from Employees as emp
join Employees as mng 
on emp.reports_to=mng.employee_id
group by mng.employee_id
order by employee_id
---ex7
