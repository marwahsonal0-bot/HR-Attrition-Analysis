CREATE TABLE hr_attrition (
Age INT,
Attrition VARCHAR(10),
BusinessTravel VARCHAR(50),
DailyRate INT,
Department VARCHAR(50),
DistanceFromHome INT,
Education INT,
EducationField VARCHAR(50),
EmployeeCount INT,
EmployeeNumber INT,
EnvironmentSatisfaction INT,
Gender VARCHAR(10),
HourlyRate INT,
JobInvolvement INT,
JobLevel INT,
JobRole VARCHAR(50),
JobSatisfaction INT,
MaritalStatus VARCHAR(20),
MonthlyIncome INT,
MonthlyRate INT,
NumCompaniesWorked INT,
Over18 VARCHAR(5),
OverTime VARCHAR(10),
PercentSalaryHike INT,
PerformanceRating INT,
RelationshipSatisfaction INT,
StandardHours INT,
StockOptionLevel INT,
TotalWorkingYears INT,
TrainingTimesLastYear INT,
WorkLifeBalance INT,
YearsAtCompany INT,
YearsInCurrentRole INT,
YearsSinceLastPromotion INT,
YearsWithCurrManager INT,
Attrition_Flag INT
);

--Q.1 Write a SQL query to find Total Employees.

SELECT COUNT(*) AS total_employees
FROM hr_attrition;

--Q.2 Write a SQL query to find Attrition Count.

SELECT Attrition, COUNT(*) AS employee_count
FROM hr_attrition
GROUP BY Attrition;

--Q.3 Write a SQL query to find Attrition Rate.

SELECT 
ROUND(
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
) AS attrition_rate
FROM hr_attrition;

--Q.4 Write a SQL query to find Attrition by Department.

SELECT Department, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY employees_left DESC;

--Q.5 Write a SQL query to find Attrition by Job Role.

SELECT JobRole, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY employees_left DESC;

--Q.6 Write a SQL query to find Attrition by Overtime.

SELECT OverTime, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY OverTime;

--Q.7 Write a SQL query to find Attrition by Gender.

SELECT Gender, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY Gender;

--Q.8 Write a SQL query to find Average Salary by Department.

SELECT Department, ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM hr_attrition
GROUP BY Department
ORDER BY avg_salary DESC;

--Q.9 Write a SQL query to find Average Years at Company (Employees Who Left).

SELECT ROUND(AVG(YearsAtCompany),2) AS avg_years_before_leaving
FROM hr_attrition
WHERE Attrition = 'Yes';

--Q.10 Write a SQL query to find Attrition by Work Life Balance.

SELECT WorkLifeBalance, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;




-



