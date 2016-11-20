-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLE employee_department (
	id					SERIAL PRIMARY KEY,
	name				VARCHAR(50),
	description			VARCHAR(250)
);



CREATE TABLE employee(
	id					SERIAL PRIMARY KEY,
	first_name			VARCHAR(50),
	last_name			VARCHAR(50),
	employee_department	INT REFERENCES employee_department(id),
	boss_id				INT REFERENCES employee (id)
);

CREATE TABLE employee_hobby(
	id					SERIAL PRIMARY KEY,
	name				VARCHAR(50),
	description			VARCHAR(250)	
);
CREATE TABLE employee_hobby_relational(
	id_employee			INT REFERENCES employee(id),
	id_hobby			INT REFERENCES employee_hobby(id)
);

--Insertions
INSERT INTO employee_department(name,description) VALUES('Department_A','Department A for employees');
INSERT INTO employee_department(name,description) VALUES('Department_B','Department B for employees');
INSERT INTO employee_department(name,description) VALUES('Department_C','Department C for employees');
INSERT INTO employee_department(name,description) VALUES('Department_D','Department D for employees');
INSERT INTO employee_department(name,description) VALUES('Department_E','Department E for employees');
INSERT INTO employee_department(name,description) VALUES('Department_F','Department F for employees');


INSERT INTO employee(first_name,last_name,employee_department,boss_id) VALUES('Usuario_A','TEST_1',1,1);
INSERT INTO employee(first_name,last_name,employee_department,boss_id) VALUES('Usuario_B','TEST_2',1,1);
INSERT INTO employee(first_name,last_name,employee_department,boss_id) VALUES('Usuario_C','TEST_3',2,1);
INSERT INTO employee(first_name,last_name,employee_department,boss_id) VALUES('Usuario_D','TEST_4',3,1);

INSERT INTO employee_hobby(name,description) VALUES('Hobby_1','Hobby 1 descriptions for description purposes');
INSERT INTO employee_hobby(name,description) VALUES('Hobby_2','Hobby 2 descriptions for description purposes');
INSERT INTO employee_hobby(name,description) VALUES('Hobby_3','Hobby 3 descriptions for description purposes');

INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(1,1);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(1,2);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(2,3);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(2,1);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(3,2);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(3,3);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(4,1);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(4,2);
INSERT INTO employee_hobby_relational(id_employee,id_hobby) VALUES(4,3);
