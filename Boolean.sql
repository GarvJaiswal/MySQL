SELECT SALARY
FROM employees
WHERE Name='Garv'
AND DEPTID=10;

SELECT SALARY
FROM employees
WHERE Name='Abc'
OR DEPTID=10;

SELECT SALARY
FROM employees
WHERE NOT (Name='Abc'
OR DEPTID=10);