--get current date
select current_date; 

--get current time
select current_time; 

--convert timezone
select convert_timezone('UTC',current_timestamp) as UTC_timezone 

use database ankita_data;

--get year, MONTH ,DAY,WEEK from date
SELECT DATE_TRUNC('year',current_date) as yr_from_date;
SELECT DATE_TRUNC('MONTH',current_date) as MNTH_from_date;
SELECT DATE_TRUNC('DAY',current_date) as DAY_from_date;

SELECT DATE_TRUNC('WEEK',current_date) as WEEK_from_date; 

--to_date or date function
select to_date('2022-5-13') -- converts string date to date type


--- extracting day,month,minute,second, hour
select day(current_timestamp()),
month(current_timestamp() ),
hour(current_timestamp() ),
minute(current_timestamp() ),
second(current_timestamp() );

--week from start of the year

select week(current_date) as week_from_start_of_the_year;

-- month  from the year

select month(current_date) as month_from_start_of_the_year;

-- day of current month 

select day(current_date) as day_of_current_month;

---last day of current month

select last_day(current_date) as last_day_of_current_month;

--last day of previous month
select last_day(current_date - interval'1 month') as last_day_of_prev_mnth;

--quarter

select quarter(current_date) as qtr;

--extract YEAR, MONTH, DAY

SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS YR;
SELECT EXTRACT(MONTH FROM(DATE'2019-6-13')) AS MONTH;
SELECT EXTRACT(DAY FROM CURRENT_DATE) AS DAY; 

--FORMATING
SELECT TO_CHAR(TO_DATE('2001-08-23'),'DD-MM-YYYY') AS DATE_MONTH_YEAR; --HIGHLY USED
SELECT TO_CHAR(TO_DATE('2001-08-23'),'MM-YYYY') AS DATE_MONTH; --MONTH AND YEAR BY REQUIREMENT
SELECT TO_CHAR(TO_DATE('2001-08-23'),'MON-YYYY'); -- MONTH NAME SHOWED
SELECT TO_CHAR(TO_DATE('2001-08-23'),'DY'); -- DAY NAME
SELECT TO_CHAR(TO_DATE('2001-08-23'),'DY-DD-MON-YYYY');

select dayname('2023-12-19');

---datediff by month
select datediff('month','2022-06-01',current_date);

--datediff by year
select datediff('year','2023-12-06','2021-06-01'); 

--datediff by days
select datediff('day','2022-06-01','2023-08-01'); 

--datediff by quarter
select datediff('quarter','2023-06-01','2023-12-06');

