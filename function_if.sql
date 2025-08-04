----TASK---
----create user define function with multiif statement 
create or replace function get_fund_grade(salary numeric)
returns text as $$
declare 
grade text;
begin 
if fund >= 100000 then
    grade = 'A+';
	end if;
	
if fund < 100000 and fund >=56000 then
   grade ='B';
   end if ;
   
if fund < 100000 and fund >=80000 then
  grade = 'A';
    end if ;

if fund < 45000 and fund>=30000 then 
  grade = 'C';
  end if ;

if fund <29000 then 
   grade ='D';
   end if ;
return grade;
end;
$$ language plpgsql;

----------check a function 

select get_fund_grade(100000);--outputA+

select get_fund_grade(23000);