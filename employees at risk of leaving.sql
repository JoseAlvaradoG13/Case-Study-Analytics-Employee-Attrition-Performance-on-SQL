#Identify employees at risk of leaving
#First I want to calculate the AVG Satisfaction on the company.alter

SELECT EmployeeNumber, EnvironmentSatisfaction, JobSatisfaction, RelationshipSatisfaction, JobInvolvement,
(EnvironmentSatisfaction + JobSatisfaction + RelationshipSatisfaction + WorkLifeBalance + JobInvolvement) / 5 AS AVG_Satisfaction
FROM employees.hr_employee_attrition
WHERE Attrition = 'No'
ORDER BY AVG_Satisfaction ASC

#I want to check what AVG satisfaction does the employees have that already left the company
SELECT EmployeeNumber, EnvironmentSatisfaction, JobSatisfaction, RelationshipSatisfaction, JobInvolvement,
(EnvironmentSatisfaction + JobSatisfaction + RelationshipSatisfaction + WorkLifeBalance + JobInvolvement) / 5 AS AVG_Satisfaction
FROM employees.hr_employee_attrition
WHERE Attrition = 'Yes'
ORDER BY AVG_Satisfaction ASC
