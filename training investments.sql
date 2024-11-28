 #adequacy of training investments and correlate with performance
SELECT
TrainingTimesLastYear,
ROUND(AVG(PerformanceRating),2)
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
GROUP BY TrainingTimesLastYear
ORDER BY TrainingTimesLastYear DESC;
#We would expect an increase in performance depending on the number of training sessions the employee receives. However, after checking the results in the last table, all the values hover around 3, regardless of the number of training sessions. This could mean that the training is not significantly affecting employee performance, as the company expected