--Cleaning Data In SQL Queries


--checking info

select *
from PortfolioProject..suicidewho


select distinct country
from PortfolioProject..suicidewho
order by country

select *
from PortfolioProject..suicidewho
order by 1,6



-- deleting data that population is null
-- i mean, how can this country suicide when the population is null , right?
-- and we dont really need to use it later for data visualization

select *
from PortfolioProject..suicidewho
where Population is null
order by country




-- see what country are we deleting that is null
select distinct country
from PortfolioProject..suicidewho
where Population is null
order by country




-- count how many null value

select sum(case when population is null then 1 else 0 end) as Broken
from PortfolioProject..suicidewho




--deleting null where population that have null
delete
from PortfolioProject..suicidewho
where population is null






-- checking null values
select *
from PortfolioProject..suicidewho
where suicides_no is null 
order by 6



--delete null values in suicide 
delete
from PortfolioProject..suicidewho
where suicides_no is null 



-- summary
-- i delete country where population is null as to not to affecting the data visualization
-- and also null value in suicide




-- table that i paste on excel to visualize on tableau



-- show 15 top  country suicides more often from 1979 to 2016
--bar chart
select sum(suicides_no ) as SUICIDES,country
from PortfolioProject..suicidewho
group by country
order by suicides desc




-- show every suicides per year in 118 country
--line chart
select sum(suicides_no ) as SUICIDES,year
from PortfolioProject..suicidewho
group by year
order by year 




-- show which age suicides more often from year 1
-- bar chart

select sum(suicides_no ) as SUICIDE,age
from PortfolioProject..suicidewho
group by age



-- show which gender suicide more often
-- pie chart
select sum(suicides_no ) as SUICIDE,sex
from PortfolioProject..suicidewho
group by sex
