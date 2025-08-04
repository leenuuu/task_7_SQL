select * from bank
-------task7
1---create domain email_address_bank
CREATE DOMAIN email_address_bank AS VARCHAR(255)
CHECK (
  VALUE ~ '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
);

2----create domain fund_domain only accept +fund
create domain fund_type as numeric(100)
check(value>=0);

3---create domain to check branch_type 

create Domain branch_type1 as varchar(344)
CHECK (value in('Main Branch','Chennai Branch','Jaipur Main',
'Surat Main','Lucknow Main'));
-------------------------------------------------

1-----.create table using branch type domain

create table employee_bank2(
emp_id serial primary key,
branch branch_type1 unique,
bank_name_emp text not null,
fund int not null
);
2-----insert data in employee_bank from checking domains 
 insert into employee_bank2(emp_id,branch,bank_name_emp,fund)
 values('1','Lucknow Main','SBI',10000);
 select * from employee_bank2

 3---using alter for add new column using salary_type
 ---create domain
 create domain salary_type as numeric
  check(value>=0 and value<=200000);

  ---alter table 
  alter table employee_bank2
  add column salary salary_type default 0;
  ------------end task------