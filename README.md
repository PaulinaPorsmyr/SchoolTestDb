# SchoolTestDb

A SQL Server database project designed to manage a school system, featuring tables for students, teachers, classes, and grades.

## Description
This project constitutes the database layer for a school management system. It includes SQL scripts to create the database schema, define relationships (foreign keys), and populate tables with sample data for testing purposes.



[Image of a database schema entity relationship diagram]


## Database Schema
The database consists of the following main tables:
* **Students:** Stores student information.
* **Teachers:** Stores teacher information.
* **Subjects:** Lists the subjects offered.
* **Classes:** Links teachers to subjects and classrooms.
* **Enrollments:** Maps students to classes.
* **Grades:** Records student performance in classes.

## Features
* **Normalization:** Database is designed to reduce data redundancy.
* **Data Integrity:** Implements constraints to ensure valid data insertion.
* **Sample Data:** Includes INSERT scripts to easily set up a test environment.

## Technologies Used
* SQL Server
* T-SQL

## How to run
1.  Open SQL Server Management Studio (SSMS).
2.  Run the creation script to generate the database and tables.
3.  Run the population script to add sample data.
