---ex1 (WRONG)
Select NAME From CITY Where COUNTRYCODE = 'USA' And Population > 120000;
---ex2
Select * From city where countrycode = 'JPN';
---ex3
Select city, state From Station;
---ex4
SELECT DISTINCT CITY FROM STATION WHERE CITY 
LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%' ORDER BY CITY ASC;    
---ex5 (WRONG) 
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u';
---EX6...
SELECT DISTINCT CITY FROM STATION WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'I%' OR CITY LIKE 'E%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');
---EX7
Select name from Employee Order by name ASC;
---EX8
SELECT name FROM Employee WHERE salary >2000 AND months <10 ORDER BY employee_id ASC;
---EX9
select product_id from Products where low_fats = 'Y' and recyclable = 'Y';
---EX10
Select name from Customer where not referee_id = 2 or referee_id is null;
---EX11
Select name, population, area from World where area >= 3000000 or population >= 25000000;
---EX12
Select distinct author_id as 'id' from Views where author_id = viewer_id order by author_id ASC;
---EX13
SELECT * FROM parts_assembly where finish_date is null 
---EX14
select * from lyft_drivers where yearly_salary <= 30000 or yearly_salary >= 70000;
---Ex15
select advertising_channel from uber_advertising where money_spent > 10000 and year = 2019;
