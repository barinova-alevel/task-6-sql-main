USE master;
GO

IF DB_ID('Courses') IS NOT NULL
DROP DATABASE Courses;
Go

CREATE DATABASE Courses;
GO

USE Courses;

CREATE TABLE COURSES (
    COURSE_ID INT IDENTITY(1,1) PRIMARY KEY,
    [NAME] NVARCHAR(255),
    [DESCRIPTION] NVARCHAR(255)
	);

CREATE TABLE GROUPS (
    GROUP_ID INT IDENTITY(1,1) PRIMARY KEY,
    COURSE_ID INT,
    [NAME] NVARCHAR(255),
    FOREIGN KEY (COURSE_ID) REFERENCES COURSES(COURSE_ID) ON DELETE SET NULL
);

CREATE TABLE STUDENTS (
    STUDENT_ID INT IDENTITY(1,1) PRIMARY KEY,
    GROUP_ID INT,
    FIRST_NAME NVARCHAR(255),
    LAST_NAME NVARCHAR(255),
	FOREIGN KEY (GROUP_ID) REFERENCES GROUPS (GROUP_ID) ON DELETE SET NULL
);
GO
