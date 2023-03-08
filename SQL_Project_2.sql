/* 
Project
Requirements:
Create a table for outstanding students from the Students table, so that this table contains data for students whose cumulative GPA is higher than 3.
Create a table for non-pass students from the students table, so that this table contains data for students GPA is less than 1.5.
Show student first name beginning with A.
Show the names of students whose names contain four characters.
Apply the Aggregate functions (AVG, MAX, MIN) to a student's GPA with a clear label for the output.
Listing and displaying the names of outstanding students in the fourth level with a GPA of 4.
Displays the number of students in Level 2.
*/

-- Create  table for outstanding students from the Students table, so that this table contains data for students whose cumulative GPA is higher than 3.
CREATE TABLE Outstanding_Students 
SELECT * FROM students
 where GPA > 3;


-- Create table for non-pass students from the students table, so that this table contains data for students whose GPA is less than 1.5.
CREATE TABLE Outstan_Students 
SELECT * FROM students 
where GPA < 1.5;

-- Show student first name beginning with A.
select * from students
where First_Name like 'A%';

-- Show the names of students whose names contain four characters.
select * from students
where First_Name like '____';

-- Apply the Aggregate functions (AVG, MAX, MIN) to a student's GPA with a clear label for the output.
select round(AVG(GPA), 3) as Mean_Of_GPA ,MAX(GPA) as Max_GPA ,MIN(GPA) as Min_GPA
from students;

-- Listing and displaying the names of outstanding students in the fourth level with a GPA is higher than or equal to 3.
select First_Name ,Last_Name, GPA 
from students
where Level = 4 and GPA >=3
order by GPA DESC;

-- Displays the number of students in Level 2.
select count(Level) 
from students
where Level = 2;

