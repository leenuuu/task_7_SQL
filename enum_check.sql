select * from college
1----create student_status enum for checking stauts of college 
 create type student_status as enum('Graduate','Fail','Backlog')
 
  -----using alter command on enum  
 alter table college add column status student_status
  select * from  college 
   update college set status = 'Graduate'
 ----insert a value for checking enum 
   insert into college values(22,'rohan','shindeniwas','20001212',6700,'2025-04-23','90','23','B','Backlog')
   -------------------------------------------------------------------------------------------------------------
select * from  product
2---craete customer_status enum for checking status of customer 
  create type customer_payment_status as enum ('Booked','Paid','Balance')
  
   ------
   -----create a table student2 with using enum
   CREATE TABLE student2 (
    stud_id SERIAL PRIMARY KEY,
    stud_name TEXT NOT NULL,
     age INT CHECK (age > 0),
    department TEXT,
    status student_status NOT NULL DEFAULT 'Graduate', 
    joining_date DATE
);

------insert value in student2 table for checking student_status enum.
INSERT INTO student2 (stud_name, age, department, status, joining_date)
VALUES                ('mohan shinde', 28, 'Cp', 'Graduate', '2022-06-15'),
                      ('ravi bishnoi', 22, 'IT', 'Backlog', '2023-01-10'),
                      ('rohit sharma', 35, 'Stat', 'Fail', '2021-11-01')
 select * from student2

