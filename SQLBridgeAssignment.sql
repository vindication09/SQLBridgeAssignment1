#--Haro, Vinicio 
#--SQL 2018 Winter Bridge 
#--Assignment 1

#--Q1: Which destination in the flights database is the furthest distance away?
select distance, dest
from flights
order by distance DESC
limit 1;

#--Q2: What are the different numbers of engines in the plane table?
#--For each number of engines, which aircraft have the most number of seats?
select COUNT(distinct engines) AS 'distinct Number Of Engines'
from planes;

select distinct model, seats 
from planes 
where engines = 1 
order by seats desc limit 1;

#There are 4 models with the same number of seats, hence take all of them
select distinct model, seats 
from planes where engines = 2 
order by seats desc limit 4;

select distinct model, seats 
from planes where engines = 3 
order by seats desc limit 1;

select distinct model, seats 
from planes 
where engines = 4 
order by seats desc limit 1;

#--Q3: Show the total number of flights
select COUNT(*) AS 'Number Of Flights'
from flights;

#--Q4: Show the total number of flights by airline (Carrier)
select carrier, COUNT(*) AS 'Number Of Flights'
from flights
group by carrier;

#--Q5: Show all of the airlines, ordered by number of flights in descending order
select carrier, COUNT(*) AS 'Number Of Flights'
from flights
group by carrier
order by COUNT(*) desc;

#--Q6: Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order
select carrier, COUNT(*) AS 'Number Of Flights'
from flights
group by carrier
order by COUNT(*) desc
limit 5;

#--Q7: Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of
#--flights in descending order
select carrier, COUNT(*) AS 'Number Of Flights'
from flights
where distance >= 1000
group by carrier
order by COUNT(*) desc
limit 5;

#--Q8: Custom Question 
#--Q8: Custom Question
#--Show the top 5 average distances by carrier in desc order 
select carrier, avg(distance) as 'Avg Distance'
from flights
group by carrier
order by avg(distance) desc
limit 5;
