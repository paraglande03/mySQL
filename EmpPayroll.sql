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