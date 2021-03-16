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