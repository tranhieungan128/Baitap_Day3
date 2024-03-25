---ex1
SELECT 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views, 
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views 
FROM viewership;
---ex2
SELECT x,y,z,
    Case WHEN (x+y) > z AND (x+z) > y AND (y+z) > x THEN 'Yes' ELSE 'No' end AS triangle
FROM Triangle 
---ex3
SELECT 
  SUM (CASE when call_category is NULL OR call_category ='n/a' THEN 1 
  ELSE 0 END ) as null_values,
COUNT(case_id) as total_call
FROM callers
---ex4
SELECT name
FROM Customer
WHERE COALESCE(referee_id,0) <> 2
---ex5
SELECT survived,
    sum(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
    sum(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
    sum(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived
