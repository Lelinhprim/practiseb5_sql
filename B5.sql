\*Buổi 5
\*EX1
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2=0
\*EX2
SELECT COUNT(CITY)- COUNT(DISTINCT CITY)
FROM STATION
\*EX4
SELECT round(cast(Sum(item_count*order_occurrences)/sum(order_occurrences) as decimal),1)
as Mean
from items_per_order
\*EX5
SELECT distinct candidate_id
from candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3
\*EX6
Select user_id,
max(date(post_date))-min(date(post_date)) as days_between
from posts
where post_date>='2021-01-01' and post_date<'2022-01-01'
group by user_id
having count(post_id)>=2
\*EX7
Select card_name,
max(issued_amount)- min(issued_amount) as difference
from monthly_cards_issued
group by card_name
order by difference DESC;
\*EX8
Select manufacturer,
count(drug)  as drug_count,
abs(sum(cogs-total_sales)) as total_losses
from pharmacy_sales
WHERE total_sales<cogs
group by manufacturer
order by total_losses DESC
\*EX9
SELECT id,
movie,
description,
rating
FROM Cinema
where id%2 <> 0
and description not in ('boring')
group by id
order by rating desc
\*EX10
select distinct teacher_id ,
count(distinct subject_id) as cnt
from Teacher
group by teacher_id
\*EX11
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id
\*EX12
select class
from Courses
having count(student)>5
