CREATE DATABASE payroll_service;

use payroll_service;

SHOW databases;

SELECT  DATABASE();

CREATE TABLE employee_payroll
(
	id			INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name		VARCHAR(255) NOT NULL,
    salary		double NOT NULL,
    Start_date	DATE NOT NULL,
    PRIMARY KEY	(id)
);

DESCRIBE employee_payroll;

INSERT INTO employee_payroll(name , salary, Start_date) VALUES
('BILL',1000000,'2018-01-03'),
('TERISA',2000000,'2019-11-13'),
('CHARLIE',3000000,'2020-05-21');

SELECT * FROM employee_payroll;

SELECT salary FROM employee_payroll
WHERE name = 'BILL';

SELECT * FROM employee_payroll
WHERE Start_date BETWEEN CAST('2019-01-03' AS DATE) and DATE (NOW());

ALTER TABLE employee_payroll ADD gender char(1) AFTER name ;

UPDATE  employee_payroll SET gender = 'F' WHERE name='TERISA';

UPDATE  employee_payroll SET gender = 'M' WHERE name='BILl' OR name = 'CHARLIE';

UPDATE employee_payroll SET salary = 4000000 WHERE name = 'TERISA';

SELECT GENDER , SUM(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY GENDER ;

SELECT gender , AVG(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY GENDER ;

SELECT gender , COUNT (name) FROM employee_payroll  GROUP BY GENDER ;

