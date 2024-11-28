--Work Life Balance
--Determine if work-life balance issues correlate with overtime.
SELECT
OverTime,
ROUND((COUNT(*) * 100) / (SELECT COUNT(*) FROM employees.hr_employee_attrition where attrition = 'No' AND WorkLifeBalance <= 3),2) AS '% Overtime'
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
AND WorkLifeBalance <= 3 
GROUP BY OverTime

--76.06% of employees with a Work-Life Balance score less than or equal to 3 do not overwork, while 23.94% do overwork. 
--Based on these results, overworking may not be the main reason why employees lack a Work-Life Balance, but it can be a secundary reason.

--Determine if work-life balance issues correlate with job Satisfaction
SELECT
JobSatisfaction,
ROUND((COUNT(*) * 100) / (SELECT COUNT(*) FROM employees.hr_employee_attrition where attrition = 'No' AND WorkLifeBalance <= 3),2) AS WorkLifeBalance
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
AND WorkLifeBalance <= 3
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction ASC

--Using the last table, we calculated the percentage of employees with a Work-Life Balance of 3 or less, categorized by their Job Satisfaction levels. 
--The results are as follows: 18.07% for a Job Satisfaction of 1, 19.24% for a Job Satisfaction of 2, 29.45% for a Job Satisfaction of 3, and 33.24% for a Job Satisfaction of 4.

--Sum the porcentage with Job Satisfaction 3 or lower
SELECT
(18.07 + 19.24 + 29.45) AS Low_Level_Job_Satis

--Based on the results, 66.76% of employees with a Work-Life Balance of 3 or less are dissatisfied with their current Job Satisfaction. This could be one of the main reasons for their lower level of Work-Life Balance.
