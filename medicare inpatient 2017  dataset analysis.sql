
SELECT * FROM medicare.`medicare 2017`;
SELECT COUNT(*) AS total_rows
FROM `medicare 2017`;
/* There are totally 196325 rows in the database*/

select count(distinct`DRG definition`)
From `medicare 2017`;

/* There are totally 563  DRGs in the database*/

select count(distinct `Provider Name`)
From `medicare 2017`;
/* There are totally 3077 providers in the database*/



SET sql_mode = '';

/* list out TOP 10 DRG with highest average total payment*/
SELECT `DRG Definition`, `Average Total Payments` AS avg_total_payment
FROM `medicare 2017`
group by `DRG Definition`
ORDER BY avg_total_payment DESC
LIMIT 10;

/* The heart transplant costs the highest among all the DRGs */
/* FInding out the TOP 10 DRG with highest total discharges*/
select `DRG Definition`, round(avg(`Total Discharges`)) as Total_discharges
From `medicare 2017`
group by `DRG Definition`
order by Total_discharges desc
Limit 10;
/* for septicemia the total discharges is high and kidney transplant the total discharge is least */

select `DRG Definition`, `Average Covered Charges`as avg_covered_charges
from `medicare 2017`
group by `DRG Definition`
order by avg_covered_charges desc
limit 10;


select `DRG Definition`,  `Average Medicare Payments` as Avg_medicare_payments
from `medicare 2017`
group by `DRG Definition`
order by  Avg_medicare_payments desc
limit 10;

/* The hearttransplats costs the high among all the DRG in temrs of average medicare payment and average total payment */

/* Provider analysis */
select `Provider Name` ,Round(`Average Covered Charges`) as avg_covered_charges 
from  `medicare 2017`
group by  `Provider Name` 
order by avg_covered_charges  desc
limit 10;

/* The stanford healthcare has the highest average covered charges */


select `Provider Name`, round(`Average Total Payments`) as avg_total_payments
from `medicare 2017`
group by `Provider Name`
order by  avg_total_payments desc
limit 10;
/* The stanford healthcare has the highest average total payment  */

select `Provider Name`, round(`Average Medicare Payments`) as avg_medicare_payments
from `medicare 2017`
group by `Provider Name`
order by  avg_medicare_payments desc
limit 10;

/* The stanford healthcare has the highest average medicare payment  */ 

