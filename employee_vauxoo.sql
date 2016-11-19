-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
DROP DATABASE IF EXISTS employee_employee;--delete this before commit
CREATE DATABASE IF NOT EXISTS  employee_employee;--delete this before commit

USE employee_employee;
CREATE TABLE employee (
	id					int NOT NULL AUTO_INCREMENT,
	first_name			varchar(50),
	last_name			varchar(50),
	employee_department	int,
	PRIMARY KEY (id),
	FOREIGN KEY (employee_department) REFERENCES employee_department(id)
);

CREATE TABLE employee_department (
	id					int NOT NULL AUTO_INCREMENT,
	name				varchar(50),
	description			varchar(250),
	
);

CREATE TABLE employee_hobby (
);

--Insertions
INSERT INTO employee_department(id,name,description) VALUES(NULL,"Department_A","Department A for employees");
INSERT INTO employee_department(id,name,description) VALUES(NULL,"Department_B","Department B for employees");
INSERT INTO employee_department(id,name,description) VALUES(NULL,"Department_C","Department C for employees");
INSERT INTO employee_department(id,name,description) VALUES(NULL,"Department_D","Department D for employees");
INSERT INTO employee_department(id,name,description) VALUES(NULL,"Department_E","Department E for employees");
INSERT INTO employee_department(id,name,description) VALUES(NULL,"Department_F","Department F for employees");


INSERT INTO employee(id,first_name,last_name,employee_department) VALUES(NULL,"Usuario_A","TEST_1",1);
INSERT INTO employee(id,first_name,last_name,employee_department) VALUES(NULL,"Usuario_B","TEST_2",1);
INSERT INTO employee(id,first_name,last_name,employee_department) VALUES(NULL,"Usuario_C","TEST_3",2);
INSERT INTO employee(id,first_name,last_name,employee_department) VALUES(NULL,"Usuario_D","TEST_4",3);



-- ...
