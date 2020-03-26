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

