---EX1
SELECT Name
From STUDENTS
Where Marks >75
Order by Right(Name, 3), ID;
---EX2
select user_id,
concat (upper(left(name, 1)), lower (right(name, length(name)-1))) as name
from Users
order by user_id 
---EX3
SELECT 
manufacturer,
concat ('$', round(sum(total_sales), 0))
FROM pharmacy_sales
group by manufacturer
order by round(sum(total_sales), 0) desc, manufacturer ASC
---EX4
SELECT 
EXTRACT(month from submit_date) as mth,
product_id,
round(avg(stars), 2)
FROM reviews
group by EXTRACT(month from submit_date), product_id
order by EXTRACT(month from submit_date), product_id
---EX5
SELECT 
sender_id,
count(message_id)
FROM messages
where extract(month from sent_date) = '08'
group by sender_id
order by count(message_id) desc 
limit 2
---EX6
select tweet_id 
from Tweets
where length(content)>15
---EX7
select 
count(distinct(user_id)) as active_users,
activity_date 
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by 
activity_date
---EX8
select count(distinct(id))
from employees
where extract (month from joining_date) between 1 and 7 and
extract (year from joining_date) = 2022
---EX9
select position ('a' in first_name) 
from worker
where First_name = 'Amitah'
---EX10
select
substring (title from length(winery)+2 for 4)
from winemag_p2
where country = 'Macedonia'






