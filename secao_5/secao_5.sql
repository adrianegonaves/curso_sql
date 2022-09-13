USE employees;

SELECT * FROM employees WHERE emp_no = 14429;

SELECT * FROM employees.salaries;
SELECT * FROM  salaries WHERE salary >=155000;

SELECT * FROM employees.titles;
SELECT * FROM  titles WHERE emp_no >=11500;

SELECT DISTINCT gender FROM employees;
SELECT DISTINCT title FROM titles;
SELECT * FROM employees.salaries;

SELECT * FROM salaries WHERE salary > 100000 AND from_date = "1991-12-12" AND emp_no > 12800;
SELECT * FROM titles WHERE title ="Senior Engineer" || title = "Staff" || emp_no > 12500 ORDER BY emp_no DESC;

SELECT * FROM titles WHERE NOT title ="Staff" AND NOT title = "Senior Engineer";

SELECT *FROM salaries ORDER BY from_date DESC;
SELECT *FROM salaries ORDER BY from_date ASC;

SELECT *FROM titles ORDER BY title DESC;

SELECT *FROM salaries ORDER BY from_date LIMIT 10;

SELECT *FROM employees ORDER BY birth_date LIMIT 15 ;

SELECT *FROM employees ORDER BY hire_date DESC LIMIT 15;
SELECT *FROM employees WHERE gender = "F" ORDER BY hire_date DESC LIMIT 15;

SELECT * FROM titles;

SELECT *FROM titles ORDER BY title LIMIT 5;
SELECT *FROM salaries;

SELECT salary FROM salaries ORDER BY salary LIMIT 1;
SELECT MIN(salary) AS salary FROM salaries;

SELECT MAX(salary) AS maior_salario FROM salaries;
SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;

SELECT COUNT(*) FROM salaries WHERE salary > 100000;

SELECT COUNT(*) AS mulheres FROM employees WHERE gender = "F" ;
SELECT * FROM departments;

SELECT COUNT(*) FROM departments;

SELECT AVG (salary) AS media_salarial FROM salaries;
SELECT AVG (salary) AS media_salarial FROM salaries WHERE salary > 100000;

SELECT SUM(salary) FROM salaries;

SELECT SUM(salary) FROM salaries WHERE salary > 100000;

SELECT * FROM employees WHERE first_name LIKE  "ber%";
SELECT * FROM employees WHERE first_name LIKE  '%ber%';
SELECT * FROM employees WHERE first_name LIKE  '%ber' AND gender = 'F';
SELECT * FROM employees WHERE last_name LIKE  '%ber' AND gender = 'F';
SELECT * FROM employees WHERE last_name LIKE  '%ber' OR gender = 'F';

SELECT * FROM titles WHERE title LIKE '%Engineer%';
SELECT * FROM titles WHERE title LIKE 'Engineer%';
SELECT * FROM titles WHERE title LIKE '%Engineer';
SELECT * FROM titles WHERE title LIKE 'Engineer';

SELECT * FROM dept_emp WHERE dept_no IN ("d004", "d005", "d006") ORDER BY dept_no DESC;

SELECT * FROM departments WHERE dept_name IN ("Development", "Marketing") ;

SELECT * FROM employees ;
SELECT * FROM employees WHERE last_name IN ("facello", "peac");
SELECT * FROM employees WHERE last_name IN ("Facello", "Peac");
SELECT * FROM employees WHERE last_name IN ("Facello", "Peac") AND gender = 'F';
SELECT * FROM employees WHERE last_name IN ("Facello", "Peac") LIMIT 10;

SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd001' AND 'd008' ;

SELECT * FROM salaries WHERE salary BETWEEN '125000' AND '175000';
SELECT * FROM salaries WHERE  salary >= 125000 AND salary <= 175000;

SELECT SUM(salary) AS soma_salario FROM salaries;

SELECT dept_no AS departamento_numero, dept_name AS departamento_nome FROM employees.departments ;

SELECT dept_no AS "Número do departamento" , dept_name AS departamento_nome FROM employees.departments ;
