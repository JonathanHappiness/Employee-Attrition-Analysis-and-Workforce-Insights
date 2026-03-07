-- =========================================
-- EMPLOYEE ATTRITION SQL QUERIES
-- =========================================


-- =========================================
-- 1. Workforce Structural Ordering & Visibility
-- =========================================

-- Q1: Order employees by Age (Ascending)
SELECT *
FROM attrition_table
ORDER BY age ASC;


-- Q2: Order employees by Department (Ascending)
SELECT *
FROM attrition_table
ORDER BY department ASC;


-- Q3: Order employees by Years at Company (Ascending)
SELECT *
FROM attrition_table
ORDER BY YearsAtCompany ASC;


-- Q4: Order employees by Age (Descending)
SELECT *
FROM attrition_table
ORDER BY age DESC;


-- Q5: Order employees by Department (Descending)
SELECT *
FROM attrition_table
ORDER BY department DESC;


-- Q6: Order employees by Years at Company (Descending)
SELECT *
FROM attrition_table
ORDER BY YearsAtCompany DESC;



-- =========================================
-- 2. Workforce Experience & Cumulative Metrics
-- =========================================

-- Q7: Total Years at Company
SELECT
SUM(YearsAtCompany) AS total_years_at_company
FROM attrition_table;


-- Q8: Total Companies Worked
SELECT
SUM(NumCompaniesWorked) AS total_companies_worked
FROM attrition_table;


-- Q9: Total Age of Employees
SELECT
SUM(age) AS total_employee_age
FROM attrition_table;


-- Q10: Total Attrition (Employees who left)
SELECT
COUNT(*) AS total_attrition
FROM attrition_table
WHERE attrition = 'Yes';


-- Q11: Total Years at Company (Medical Education Field)
SELECT
SUM(YearsAtCompany) AS total_years_medical
FROM attrition_table
WHERE educationfield = 'Medical';



-- =========================================
-- 3. Workforce Averages & Demographic Patterns
-- =========================================

-- Q12: Average Age of Employees
SELECT
AVG(age) AS average_age
FROM attrition_table;


-- Q13: Average Years at Company
SELECT
AVG(YearsAtCompany) AS average_tenure
FROM attrition_table;


-- Q14: Average Companies Worked
SELECT
AVG(NumCompaniesWorked) AS avg_companies_worked
FROM attrition_table;


-- Q15: Average Age in Research & Development Department
SELECT
AVG(age) AS avg_age_rd
FROM attrition_table
WHERE department = 'Research & Development';


-- Q16: Average Years at Company (Male Employees)
SELECT
AVG(YearsAtCompany) AS avg_tenure_male
FROM attrition_table
WHERE gender = 'Male';


-- Q17: Average Age (Life Sciences Education Field)
SELECT
AVG(age) AS avg_age_life_sciences
FROM attrition_table
WHERE educationfield = 'Life Sciences';



-- =========================================
-- 4. Workforce Size & Distribution Analysis
-- =========================================

-- Q18: Total Number of Employees
SELECT
COUNT(*) AS total_employees
FROM attrition_table;


-- Q19: Attrition Count (Yes / No)
SELECT
attrition,
COUNT(*) AS employee_count
FROM attrition_table
GROUP BY attrition;


-- Q20: Employees per Department
SELECT
department,
COUNT(*) AS employee_count
FROM attrition_table
GROUP BY department
ORDER BY employee_count DESC;


-- Q21: Employees from Marketing Education Field
SELECT
COUNT(*) AS marketing_education_employees
FROM attrition_table
WHERE educationfield = 'Marketing';


-- Q22: Married Employees
SELECT
COUNT(*) AS married_employees
FROM attrition_table
WHERE maritalstatus = 'Married';



-- =========================================
-- 5. Workforce Extremes & Risk Indicators
-- =========================================

-- Q23: Minimum Age
SELECT
MIN(age) AS minimum_age
FROM attrition_table;


-- Q24: Minimum Years at Company
SELECT
MIN(YearsAtCompany) AS minimum_tenure
FROM attrition_table;


-- Q25: Minimum Age in Human Resources
SELECT
MIN(age) AS min_age_hr
FROM attrition_table
WHERE department = 'Human Resources';


-- Q26: Maximum Age
SELECT
MAX(age) AS maximum_age
FROM attrition_table;


-- Q27: Maximum Years at Company
SELECT
MAX(YearsAtCompany) AS maximum_tenure
FROM attrition_table;


-- Q28: Maximum Age in Human Resources
SELECT
MAX(age) AS max_age_hr
FROM attrition_table
WHERE department = 'Human Resources';
