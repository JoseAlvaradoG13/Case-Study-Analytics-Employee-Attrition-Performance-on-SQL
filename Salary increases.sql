#Salary increases in relation to performance ratings
SELECT
PercentSalaryHike, 
AVG(PerformanceRating) AVG_Performance_Rating
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
GROUP BY PercentSalaryHike
ORDER BY PercentSalaryHike DESC;

#Employees who receive a salary hike between 20% and 25% have an average performance rating of 4, while employees with a hike of 11% to 19% have an average performance rating of 3. Based on this information, we can infer that the bigger the salary hike, the better the performance of the employee.