-- create database University_Management
Create Database University_Management;
create table Faculty
( faculty_id int primary key, 
first_name varchar(50), 
last_name varchar(50), 
designation varchar(50),
email varchar(100) );

Select *from Faculty;

insert into Faculty
(faculty_id,first_name,last_name,designation,email)
values
(1, 'Amit', 'Sharma', 'Professor', 'amit.sharma@univ.edu'), 
(2, 'Priya', 'Verma', 'Associate Professor', 'priya.verma@univ.edu'), 
(3, 'Ramesh', 'Iyer', 'Assistant Professor', 'ramesh.iyer@univ.edu'), 
(4, 'Sonal', 'Patel', 'Professor', 'sonal.patel@univ.edu'), 
(5, 'Vikas', 'Menon', 'Lecturer', 'vikas.menon@univ.edu'), 
(6, 'Meera', 'Joshi', 'Professor', 'meera.joshi@univ.edu'), 
(7, 'Anil', 'Deshmukh', 'Lecturer', 'anil.deshmukh@univ.edu'), 
(8, 'Neha', 'Kulkarni', 'Assistant Professor', 'neha.kulkarni@univ.edu'), 
(9, 'Suresh', 'Gupta', 'Professor', 'suresh.gupta@univ.edu'), 
(10, 'Rekha', 'Singh', 'Lecturer', 'rekha.singh@univ.edu');

create table Departments
( department_id int primary key, 
dept_name varchar(100), 
faculty_id int, 
foreign key (faculty_id) references Faculty(faculty_id) );

insert into Departments 
(department_id,dept_name,faculty_id)
values 
(101, 'Computer Science', 1), 
(102, 'Electronics', 2), 
(103, 'Mechanical Engineering', 3), 
(104, 'Civil Engineering', 4),
(105, 'Mathematics', 5), 
(106, 'Physics', 6), 
(107, 'Chemistry', 7), 
(108, 'Biotechnology', 8), 
(109, 'Information Technology', 9),
(110, 'Management', 10);

create table Students
( student_id int primary key,
first_name varchar(50),
last_name varchar(50), 
dob date, 
gender char(1), 
email varchar(100),
phone varchar(20), 
department_id int,
foreign key (department_id) references Departments(department_id));

insert into Students
(student_id, first_name, last_name, dob, gender, email, phone, department_id )
values 
(1001, 'Rahul', 'Mehta', '2000-05-10', 'M', 'rahul.mehta@univ.edu', '9876543210', 101),
(1002, 'Sneha', 'Kumar', '1999-08-15', 'F', 'sneha.kumar@univ.edu', '9876543211', 102),
(1003, 'Arjun', 'Patil', '2001-01-20', 'M', 'arjun.patil@univ.edu', '9876543212', 103), 
(1004, 'Kavya', 'Shah', '2000-12-01', 'F', 'kavya.shah@univ.edu', '9876543213', 104), 
(1005, 'Rohit', 'Rao', '1999-03-25', 'M', 'rohit.rao@univ.edu', '9876543214', 105), 
(1006, 'Nisha', 'Desai', '2001-07-14', 'F', 'nisha.desai@univ.edu', '9876543215', 106), 
(1007, 'Vivek', 'Naik', '2000-09-30', 'M', 'vivek.naik@univ.edu', '9876543216', 107), 
(1008, 'Pooja', 'Shetty', '1999-11-22', 'F', 'pooja.shetty@univ.edu', '9876543217', 108), 
(1009, 'Manish', 'Goyal', '2000-06-18', 'M', 'manish.goyal@univ.edu', '9876543218', 109),
(1010, 'Ananya', 'Kapoor', '2001-02-27', 'F', 'ananya.kapoor@univ.edu', '9876543219', 110);

create table Courses 
(course_id int primary key,
 course_name varchar(100),
 credits int,
 department_id int,
 foreign key (department_id) references Departments(department_id) );
 
 insert into Courses
 (course_id ,course_name, credits, department_id )
 values
 (201, 'Data Structures', 4, 101),
 (202, 'Digital Electronics', 3, 102), 
 (203, 'Thermodynamics', 4, 103), 
 (204, 'Structural Analysis', 4, 104), 
 (205, 'Linear Algebra', 3, 105), 
 (206, 'Quantum Mechanics', 4, 106), 
 (207, 'Organic Chemistry', 3, 107), 
 (208, 'Genetic Engineering', 4, 108), 
 (209, 'Database Management', 4, 109), 
 (210, 'Business Management', 3, 110);
 
 create table ClassSections
 ( section_id int primary key,
 course_id int,
 faculty_id int,
 semester varchar(10),
 year int,
 foreign key (course_id) references Courses(course_id),
 foreign key (faculty_id) references Faculty(faculty_id));
 
 insert into ClassSections
 (section_id, course_id, faculty_id, semester, year )
 values	
 (301, 201, 1, 'Spring', 2023),
 (302, 202, 2, 'Fall', 2023),
 (303, 203, 3, 'Spring', 2023),
 (304, 204, 4, 'Fall', 2023),
 (305, 205, 5, 'Spring', 2023),
 (306, 206, 6, 'Fall', 2023),
 (307, 207, 7, 'Spring', 2023),
 (308, 208, 8, 'Fall', 2023),
 (309, 209, 9, 'Spring', 2023),
 (310, 210, 10, 'Fall', 2023);
 
create table Enrollments
( enrollment_id int primary key,
student_id int,
section_id int,
grade decimal(5,2),
foreign key (student_id) references Students(student_id),
foreign key (section_id) references ClassSections(section_id) );

insert into Enrollments
(enrollment_id, student_id, section_id, grade)
 values
 (401, 1001, 301, 85.5),
 (402, 1002, 302, 78.0),
 (403, 1003, 303, 92.0),
 (404, 1004, 304, 67.5), 
 (405, 1005, 305, 88.0), 
 (406, 1006, 306, 74.0),
 (407, 1007, 307, 81.5),
 (408, 1008, 308, 90.0),
 (409, 1009, 309, 69.0),
 (410, 1010, 310, 95.0);
 
 create table Hostel
 (hostel_id int primary key,
 hostel_name varchar(50),
 capacity int); 
 
 insert into Hostel
 (hostel_id, hostel_name, capacity)
 values
 (501, 'Ganga Hostel', 200),
 (502, 'Yamuna Hostel', 150),
 (503, 'Krishna Hostel', 180),
 (504, 'Godavari Hostel', 220),
 (505, 'Saraswati Hostel', 160),
 (506, 'Narmada Hostel', 140),
 (507, 'Cauvery Hostel', 190), 
 (508, 'Brahmaputra Hostel', 200),
 (509, 'Indus Hostel', 170),
 (510, 'Kaveri Hostel', 180);
 
 
create table HostelAllocation
(allocation_id int primary key, 
student_id int,
hostel_id int,
room_no varchar(10),
foreign key (student_id) references Students(student_id),
foreign key (hostel_id) references Hostel(hostel_id) );

insert into HostelAllocation
(allocation_id, student_id, hostel_id, room_no)
values
(601, 1001, 501, 'A101'),
(602, 1002, 502, 'B202'),
(603, 1003, 503, 'C303'),
(604, 1004, 504, 'D404'),
(605, 1005, 505, 'E505'),
(606, 1006, 506, 'F606'),
(607, 1007, 507, 'G707'),
(609, 1009, 509, 'I909'),
(610, 1010, 510, 'J1010');

-- Retrieve all female students from the Students table.

select * from Students
where gender = 'F';

-- List students whose email ends with "@univ.edu".

select first_name, last_name, email from Students
where email like '%@univ.edu';

-- Find students born in the year 2000. 

select first_name, last_name, dob from Students 
where dob between '2000-01-01' and '2000-12-31';

-- Get students who belong to departments 101, 105, or 109. 

select first_name, last_name, department_id from Students 
where department_id in (101, 105, 109);

-- Update student phone

update Students set phone = '9876543210' 
where student_id = 1003;

select * from Students;

-- Retrieve male students from department 101 or all students from department 109.

select first_name, last_name, gender, department_id from Students 
where (gender = 'M' and department_id = 101) or department_id = 109;

-- Count how many students are there in each gender category.

select gender, COUNT(*) as total_students from Students
group by gender;

-- Show the 5 youngest students by date of birth.

select * from Students
order by dob desc
limit 5;

-- Display student names in uppercase for first name and lowercase for last name.

select concat(UPPER(first_name), ' ', LOWER(last_name)) as formatted_name
from Students;

-- Calculate the current age of each student.

select first_name, last_name, 
timestampdiff(YEAR, dob, CURDATE()) as age
from Students;

-- Count the number of students in each department.

select department_id, count(*) as student_count
from Students
Group by department_id;

-- Round off student grades to the nearest whole number.

select student_id, enrollment_id, grade,
ROUND(grade) as rounded_grade
from Enrollments;

-- Show the total number of students, sum of grades, average grade, minimum grade, and maximum grade for each course.

select c.course_name, COUNT(e.student_id) as total_students, 
sum(e.grade) as total_grades,
avg(e.grade) as average_grade, 
min(e.grade) as min_grade, 
max(e.grade) as max_grade from Enrollments e
join ClassSections cs on e.section_id = cs.section_id 
join Courses c on cs.course_id = c.course_id 
group by c.course_name;

-- Find departments where the average grade of enrolled students is above 80.

select department_id, avg(grade) as avg_grade from Enrollments e
join Students s on e.student_id = s.student_id
group by department_id 
having avg (grade) > 80;

-- List students with their department names.

select s.first_name, s.last_name, d.dept_name from Students s
join Departments d on s.department_id = d.department_id;

-- Show each student with the courses they are enrolled in and their grades.

select s.first_name, s.last_name, c.course_name, e.grade from Students s
join Enrollments e on s.student_id = e.student_id
join ClassSections cs on e.section_id = cs.section_id
join Courses c on cs.course_id = c.course_id;

-- List all students with their hostel and room number (if allocated).

select s.first_name, s.last_name, h.hostel_name, ha.room_no from Students s
left join HostelAllocation ha on s.student_id = ha.student_id
left join Hostel h on ha.hostel_id = h.hostel_id;

-- Find students whose grade is above the average grade.

select first_name, last_name from Students
where student_id in ( select student_id from Enrollments
where grade > (select avg(grade) from Enrollments) );


-- Find the youngest student in the university. 

select first_name, last_name, dob from Students 
where dob = (select max(dob) from Students);

-- Rank all students by their grade (highest first).

select s.first_name, s.last_name, e.grade,
rank() over (order by e.grade desc) as rank_pos from Enrollments e
join Students s on e.student_id = s.student_id;

-- Rank students within each course by their grades.

select c.course_name, s.first_name, s.last_name, e.grade,
rank() over (partition by c.course_id order by e.grade desc) as course_rank from Enrollments e
join ClassSections cs on e.section_id = cs.section_id
join Courses c on cs.course_id = c.course_id 
join Students s on e.student_id = s.student_id;

-- Create a view of students who have grades above 85

create view  High_Achievers as
select s.student_id, s.first_name, s.last_name, c.course_name, e.grade 
from Students s
join Enrollments e on s.student_id = e.student_id 
join ClassSections cs on e.section_id = cs.section_id 
join Courses c on cs.course_id = c.course_id 
where e.grade > 85;

select *from High_Achievers;

update students 
set phone = 981112230, gender = 'M'
where student_id = 1005;




