-- create database dev_db
create database if not exists dev_db;

--create schema dev_db.college_data
create schema if not exists dev_db.college_data;

use database dev_db;
use schema college_data;

drop table if exists TEACHERS;
drop table if exists MARKS;
drop table if exists DEPT;
drop table if exists SUBJECTS;


create or replace TABLE TEACHERS (   PROF_ID NUMBER(38,0),   PROF_NAME VARCHAR(50),   DEGREE VARCHAR(100),   DEPT_ID NUMBER(38,0)  );

create or replace TABLE MARKS (   STUDENT_ID NUMBER(38,0),   SUBJECT_ID NUMBER(38,0),   OBTAINED_MARKS NUMBER(38,0)  );

create or replace TABLE DEPT (   DEPT_ID NUMBER(38,0),   DEPT_NAME VARCHAR(10),   HEAD_OF_DEPT NUMBER(38,0)  );

create or replace TABLE SUBJECTS (   SUBJECT_ID NUMBER(38,0),   SUBJECT_NAME VARCHAR(100),   PROF_ID NUMBER(38,0),   TOTAL_MARKS NUMBER(38,0)  );

