CREATE DATABASE school_db;
USE school_db;
CREATE TABLE students (student_id INT PRIMARY KEY, student_name VARCHAR(100), grade_level VARCHAR(10));
CREATE TABLE teachers (teacher_id INT PRIMARY KEY, teacher_name VARCHAR(100), subject VARCHAR(50));
CREATE TABLE  classes (class_id INT PRIMARY KEY, class_name VARCHAR (50), room_no VARCHAR(10));
CREATE TABLE enrollment (enrollment_id INT PRIMARY KEY, student_id INT, class_id INT, FOREIGN KEY (student_id) REFERENCES students(student_id), FOREIGN KEY (class_id) REFERENCES classes(class_id));
CREATE TABLE grades (grade_id INT PRIMARY KEY, student_id INT, subject VARCHAR(50), grade FLOAT, FOREIGN KEY (student_id) REFERENCES students(student_id);
CREATE TABLE department (department_id INT PRIMARY KEY, department_name VARCHAR (50))
CREATE TABLE subjects (subject_id INT PRIMARY KEY, subject_name VARCHAR (50), department_id INT, FOREIGN KEY (department_id) REFERENCES department (department_id));
CREATE TABLE attendance (attendance_id INT PRIMARY KEY, student_id INT, date DATE, status VARCHAR(10), FOREIGN KEY (student_id) REFERENCES students(student_id))
CREATE TABLE users (user_id INT PRIMARY KEY, user_name VARCHAR(50), password VARCHAR(100), role VARCHAR(20));
