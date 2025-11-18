# University-Management-System
#  University Management System – SQL Project

This project is a **SQL-only University Management System** designed to store, manage, and analyze university-related information. It includes database creation, table relationships, sample data, and a wide range of SQL queries from beginner to advanced level.

---

##  Project Overview

The goal of this project is to build a complete **relational database** for a university environment using SQL.  
The system manages:

- Faculty  
- Departments  
- Students  
- Courses  
- Class Sections  
- Enrollments & Grades  
- Hostel & Hostel Allocation  

It also includes analytical queries, ranking functions, and SQL views.

---

##  Database Schema

### Tables Included
- `Faculty`
- `Departments`
- `Students`
- `Courses`
- `ClassSections`
- `Enrollments`
- `Hostel`
- `HostelAllocation`

Each table contains:
- Primary keys  
- Foreign keys  
- Data integrity constraints  
- Sample data insertions  

---

##  Key Relationships

- One **Faculty** → Many **Departments**  
- One **Department** → Many **Students**  
- One **Department** → Many **Courses**  
- One **Course** → Many **Class Sections**  
- One **Student** → Many **Enrollments**  
- One **Hostel** → Many Students via allocation  

---

##  SQL Features Demonstrated

###  Basic SQL Queries
- Retrieve students by gender  
- Filter by email domain  
- Students born in a specific year  
- Students belonging to selected departments  
- Update phone numbers  
- Ordering, limiting records  
- String formatting (UPPER / LOWER)  
- Calculate student age  

###  Aggregate Functions & Grouping
- Count students by gender  
- Students per department  
- Course-wise grade analysis (SUM, AVG, MIN, MAX)  

###  Joins
- INNER JOIN  
- LEFT JOIN  
- Multi-table joins (Students → Enrollments → Courses)  

###  Advanced SQL
- Subqueries (students above avg grade, youngest student)  
- Ranking with `RANK()`  
- Course-wise ranking with `PARTITION BY`  
- Creating a view `High_Achievers`  

---

##  Insights Generated

- Student grade rankings  
- Department-wise average performance  
- Course-wise enrollment & grade statistics  
- Hostel allocation details  
- High-scoring student list (grade > 85)  

---

##  Project File

**University management System-SQL Project.sql** contains:  
- Database creation  
- Table creation  
- Insert queries  
- 22+ SQL queries  
- View creation  
- Ranking & analytical queries  

---

##  How to Run This Project

1. Install MySQL or any SQL database system  
2. Open/import the `.sql` file  
3. Run all table creation and insert queries  
4. Execute the analytical queries to view results  
5. Modify or extend as needed  

---

##  Future Enhancements

- Add stored procedures  
- Implement triggers for automation  
- Add attendance and fee modules  
- Build a frontend using Python/Java/PHP  
- Connect SQL to Power BI or Tableau for dashboards  

---

##  Author

**Vaishali Ketan Patil**  
SQL | Data Analyst | Power BI | Database Management  

---
