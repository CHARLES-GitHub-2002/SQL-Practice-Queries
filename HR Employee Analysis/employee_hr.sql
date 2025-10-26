--- 1. Count the number of employees in each department---

SELECT department ,COUNT(*)  as Count_department
FROM hrdata
GROUP BY department;

--- 2.Calculate the average age for each department ---

SELECT department ,AVG(age)  as avg_age
FROM hrdata
GROUP BY department;


---- 3. Identify the most common job roles in each department ---

SELECT department, job_role, COUNT(*) AS role_count
FROM hrdata
GROUP BY department, job_role
ORDER BY department, role_count DESC;


--- 4. Calculate the average job satisfaction for each education level ---

SELECT education,AVG(job_satisfaction) AS AVG
FROM hrdata
GROUP BY education;

--- 5.Determine the average age for employees with different levels of job satisfaction ---

SELECT job_satisfaction ,AVG(age) AS AVG_age
FROM hrdata
GROUP BY job_satisfaction;

--- 6. Calculate the attrition rate for each age band --

SELECT age_band, SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100 AS attrition_rate
FROM hrdata
GROUP BY age_band;

--- 7. Identify the departments with the highest and lowest average job satisfaction ---

SELECT department,AVG(job_satisfaction) AS avg_satisfaction
FROM hrdata
GROUP BY department
ORDER BY avg_satisfaction DESC,department
;

--- 8. Find the age band with the highest attrition rate among employees with a specific education level---

SELECT education, age_band, SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100 AS attrition_rate
FROM hrdata
GROUP BY education, age_band
ORDER BY attrition_rate DESC
LIMIT 1;


--- 9.Find the education level with the highest average job satisfaction among employees who travel frequently ---

SELECT education, AVG(job_satisfaction) AS avg_satisfaction
FROM hrdata
WHERE business_travel='travel_frequently'
GROUP BY education
ORDER BY avg_satisfaction DESC;

--- 10. Identify the age band with the highest average job satisfaction among married employees ----

SELECT age_band, AVG(job_satisfaction) AS avg_satisfaction
FROM hrdata
WHERE marital_status='married'
GROUP BY age_band
ORDER BY avg_satisfaction DESC;
