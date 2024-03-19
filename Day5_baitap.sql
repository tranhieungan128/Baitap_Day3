---EX1
SELECT DISTINCT CITY FROM STATIONS WHERE ID%2=0
---EX2
SELECT COUNT (CITY) - COUNT (DISTINCT CITY) FROM STATION;
---EX3
SELECT AVG(Salary) - AVG(REPLACE (Salary, '0', '')) FROM EMPLOYEES;
---EX4
SELECT round(cast(sum(item_count * order_occurrences)/ sum(order_occurrences) as decimal), 1) as MEAN FROM items_per_order;
---EX5
SELECT candidate_id FROM candidates 
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count (skill) =3;
---Ex6
SELECT user_id, 
date (max(post_date)) - date(min(post_date)) as days_between
FROM posts
where post_date <= '2022-01-01' and post_date  >='2021-01-01'
group by user_id
---EX7
SELECT 
card_name, 
max(issued_amount) - min (issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference DESC
---EX8
SELECT
manufacturer,
count(drug) as drug_count,
abs(sum(cogs - total_sales)) as total_loss
FROM pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_loss
---EX9
select * 
from cinema
where id%2=1 and description <> 'boring' 
order by rating desc
---EX10
select teacher_id,
count(distinct subject_id) as cnt
from Teacher 
group by teacher_id
---EX11
select user_id,
count(distinct follower_id) as followers_count
from Followers
group by user_id
order by user_id
---EX12
select class
from Courses
group by class
having count(distinct student)>= 5
