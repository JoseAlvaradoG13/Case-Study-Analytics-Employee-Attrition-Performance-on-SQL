#gender distribution across departments and roles
#Count of gender
SELECT
Gender,
COUNT(*) AS Count_Gender_Distribution,
ROUND((COUNT(*) * 100) / (SELECT COUNT(*) FROM employees.hr_employee_attrition where attrition = 'No'),2) AS '%_Gender_Distribution'
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
GROUP BY Gender;
#The percentage of men in the company exceeds that of women by almost 20%.

#Count of gender across departments
SELECT
Gender,
Department,
COUNT(*) AS Count_Gender_Distribution,
ROUND((COUNT(*) * 100) / (SELECT COUNT(*) FROM employees.hr_employee_attrition where attrition = 'No'),2) AS '%_Gender_Distribution'
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
GROUP BY Gender, Department
ORDER BY Department, '%_Gender_Distribution';
#The percentage of men in each department exceeds that of women.

#Count of gender across Job levels
SELECT
Gender,
JobLevel,
COUNT(*) AS Count_Gender_Distribution,
ROUND((COUNT(*) * 100) / (SELECT COUNT(*) FROM employees.hr_employee_attrition where attrition = 'No'),2) AS '%_Gender_Distribution'
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
GROUP BY Gender, JobLevel
ORDER BY JobLevel;
#The percentage of men in each job level exceeds that of women, with Level 5 showing the greatest difference.
