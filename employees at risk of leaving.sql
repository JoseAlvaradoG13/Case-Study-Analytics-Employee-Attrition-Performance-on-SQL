#Identify employees at risk of leaving
  
--I would like to check the average satisfaction level of employees who have already left the company.
WITH Satisfaction AS (
SELECT EmployeeNumber, EnvironmentSatisfaction, JobSatisfaction, RelationshipSatisfaction, JobInvolvement,
(EnvironmentSatisfaction + JobSatisfaction + RelationshipSatisfaction + WorkLifeBalance + JobInvolvement) / 5 AS AVG_Satisfaction
FROM employees.hr_employee_attrition
WHERE Attrition = 'Yes')

SELECT 
ROUND(AVG(AVG_Satisfaction),2)
FROM Satisfaction

--The AVG_ Satisfaction of the employees that already left the company is 2.54, I would recomend first focus on employees with less ot equal level of AVG_ satisfaction.

SELECT EmployeeNumber, EnvironmentSatisfaction, JobSatisfaction, RelationshipSatisfaction, JobInvolvement,
(EnvironmentSatisfaction + JobSatisfaction + RelationshipSatisfaction + WorkLifeBalance + JobInvolvement) / 5 AS AVG_Satisfaction
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
AND (EnvironmentSatisfaction + JobSatisfaction + RelationshipSatisfaction + WorkLifeBalance + JobInvolvement) / 5 <= 2.54
ORDER BY AVG_Satisfaction ASC
