CREATE DATABASE STUDENTDB;

USE  STUDENTDB;

CREATE TABLE STUDENT
(STUDENT_ID INTEGER PRIMARY KEY,
ERNOLLMENT_NO INTEGER,
FIRST_NAME VARCHAR (15),
LAST_NAME VARCHAR (15),
INTAKE_YEAR INTEGER);

CREATE TABLE NATIONALITY
(NATIONALITY_ID INTEGER PRIMARY KEY,
NATIONALITY_NAME VARCHAR (20));

CREATE TABLE STUDENT_NATIONALITY
(ST_NAT_ID INTEGER PRIMARY KEY,
STUDENT_ID INTEGER,
NATIONALITY_ID INTEGER,
FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID));

CREATE TABLE STATE
(STATE_ID INTEGER PRIMARY KEY,
STATE_NAME VARCHAR (20));

CREATE TABLE CITY
(CITY_ID INTEGER PRIMARY KEY,
CITY_NAME VARCHAR (20),
STATE_ID INTEGER,
FOREIGN KEY (STATE_ID) REFERENCES STATE(STATE_ID));

CREATE TABLE ADRRESS
(ADDRESS_ID INTEGER PRIMARY KEY,
STUDENT_ID INTEGER,
STREET_NAME VARCHAR (30),
CITY_ID INTEGER,
FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID),
FOREIGN KEY (CITY_ID) REFERENCES CITY(CITY_ID));

CREATE TABLE DEPARTMENT
(DEPARTMENT_ID INTEGER PRIMARY KEY,
DEPARTMENT_NAME VARCHAR (20));

CREATE TABLE STUDENT_DEPARTMENT
(ST_DEP_ID INTEGER PRIMARY KEY,
STUDENT_ID INTEGER,
DEPARTMENT_ID INTEGER,
FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID),
FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID));

SELECT * FROM STUDENT;

INSERT INTO STUDENT 
VALUES (001, 123456, 'ALINA', 'SAIENKO', 2013);

INSERT INTO STUDENT 
VALUES (002, 123457, 'HIMANSHU', 'SHARMA', 2017);

INSERT INTO STUDENT 
VALUES (003, 123458, 'MARIA', 'SADOVNIKOVA', 2015);

INSERT INTO STUDENT 
VALUES (004, 123459, 'VITALINA', 'SAIENKO', 2018);

INSERT INTO STUDENT 
VALUES (005, 123460, 'ALINA', 'KLEIN', 2017);

ALTER TABLE STUDENT
MODIFY COLUMN ERNOLLMENT_NO INTEGER UNIQUE;

INSERT INTO NATIONALITY
VALUES (001, 'UKRAINIAN');

INSERT INTO NATIONALITY
VALUES (002, 'RUSSIAN');

INSERT INTO NATIONALITY
VALUES (003, 'INDIAN');

INSERT INTO NATIONALITY
VALUES (004, 'GERMAN');

INSERT INTO STUDENT_NATIONALITY
VALUES (001, 001, 001);

INSERT INTO STUDENT_NATIONALITY
VALUES (002, 002, 003);

INSERT INTO STUDENT_NATIONALITY
VALUES (003, 003, 001);

DELETE FROM STUDENT_NATIONALITY
WHERE ST_NAT_ID=003;

INSERT INTO STUDENT_NATIONALITY
VALUES (003, 003, 002);

INSERT INTO STUDENT_NATIONALITY
VALUES (003, 003, 001);

SELECT SUM(INTAKE_YEAR) AS SUM_OF_YEARS
FROM STUDENT;

SELECT COUNT(STUDENT_ID) AS NUMBER_OF_STUDENTS,
MIN(INTAKE_YEAR) AS EARLIEST_INTAKE_YEAR,
AVG(INTAKE_YEAR) AS AVERAGE_INTAKE_YEAR,
MAX(INTAKE_YEAR) AS LATEST_INTAKE_YEAR,
SUM(INTAKE_YEAR) AS SUM_OF_YEARS
FROM STUDENT;

SELECT AVG(INTAKE_YEAR) AS AVERAGE_INTAKE_YEAR
FROM STUDENT;

SELECT MIN(INTAKE_YEAR) AS EARLIEST_INTAKE_YEAR
FROM STUDENT;

SELECT MAX(INTAKE_YEAR) AS LATEST_INTAKE_YEAR
FROM STUDENT;

SELECT INTAKE_YEAR
FROM STUDENT 
WHERE FIRST_NAME='ALINA';

SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE 'A%NA';

SELECT * FROM STUDENT 
WHERE LAST_NAME LIKE '__I%';
