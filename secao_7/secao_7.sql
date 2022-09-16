USE employees;

SELECT employees.first_name, employees.last_name, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 120000
ORDER BY salaries.salary DESC;

SELECT * FROM employees;
SELECT * FROM titles;

SELECT employees.first_name, employees.gender, titles.title
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no;

USE constraints;
INSERT INTO pessoas (nome, idade) VALUE ("Julio",12);
SELECT * FROM  pessoas;

SELECT pessoas.nome, enderecos.*
FROM pessoas
LEFT JOIN ENDERECOS
ON pessoas.id = enderecos.pessoa_id;

SELECT employees.first_name, employees.last_name, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT pessoas.nome, enderecos.rua
FROM pessoas
RIGHT JOIN enderecos
ON pessoas.id = enderecos.pessoa_id;


SELECT enderecos.rua, pessoas.nome
FROM enderecos
RIGHT JOIN pessoas
ON pessoas.id = enderecos.pessoa_id;


SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE salaries.salary >125000


