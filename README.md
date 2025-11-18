# University-Management-System
University Management System – SQL Project

This project is a SQL-based University Management System designed to organize and manage university-related information such as students, faculty, departments, courses, class sections, enrollment, hostels, hostel allocations, and academic performance.

It includes:

Database creation

Table structures with relationships

Sample data insertion

SQL queries (basic to advanced)

Views and analytical queries

This project is built using pure SQL—no frontend or backend language—making it ideal for learning database design, joins, constraints, and SQL analytics.

Project Objectives

Design a normalized relational database for university operations

Understand and implement primary keys, foreign keys & relationships

Perform CRUD operations (Create, Read, Update, Delete)

Execute analytical queries using aggregate functions, joins, HAVING, subqueries, ranking & views

Retrieve useful insights for university administration

Database Structure
Tables Created

Faculty

Departments

Students

Courses

ClassSections

Enrollments

Hostel

HostelAllocation

Each table includes:

Primary Keys

Foreign Keys enforcing referential integrity

Inserted sample records

Entity Relationships

One Faculty → Many Departments

One Department → Many Students & Courses

One Course → Many Class Sections

One Student → Many Enrollments

One Hostel → Many Students (via allocation)

SQL Operations Performed
Basic SQL Queries

Retrieve students based on gender

Filter students by email, DOB, department

Update student contact details

Order, sort, and limit results

String formatting (UPPER, LOWER)

Calculate student age

Aggregate Functions

COUNT, SUM, AVG, MIN, MAX

Grouping students by gender, department

Course-wise grade analysis

Joins Used

INNER JOIN

LEFT JOIN

Multi-level joins (Students → Enrollments → ClassSections → Courses)

Advanced SQL Features

Subqueries:

Students with grade above average

Youngest student

Ranking Functions:

Overall grade ranking

Course-wise ranking using RANK()

Views:

High_Achievers view for students scoring above 85

Sample Insights Retrieved

Course-wise grade analytics

Department-wise average performance

Student hostel allocation information

Students’ academic ranking

High-performing students list

Project File Included

University management System-SQL Project.sql
Contains:

Table creation

Insert statements

All queries

View creation

Ranking & analysis queries

How to Run This Project

Install MySQL / MariaDB / SQL Server / Any SQL client

Copy and run the .sql file

Execute queries section-wise to explore the system

Modify or extend the database as needed

Future Enhancements

Add stored procedures

Implement triggers for attendance or grade validation

Build a UI using Python/Java/PHP

Connect SQL database to Power BI for visualization

Author

Vaishali Patil
SQL | Data Analysis | Power BI | Database Design
