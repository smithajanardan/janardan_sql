/*
  File: Assignment1.sql

  Student's Name: Smitha Janardan

  Student's UT EID: ssj398
	 
  Course Name: CS 327E

  Unique Number: 52885

  Date Created: 02/04/12

  Date Last Modified: 02/07/12

*/

-- Chapter 3 Workshop, Ques 1:
select description, prerequisite, cost
from course
where cost like 1195
and description like 'Intro%'
order by prerequisite;

-- Chapter 3 Workshop, Ques 2:
select first_name, last_name, employer
from student
where employer = 'Competrol Real Estate'
and (last_name like 'A%' or last_name like 'B%' or last_name like 'C%')
order by last_name;

-- Chapter 3 Workshop, Ques 3:
select description
from grade_type
where modified_by = 'MCAFFREY';

-- Chapter 4 Workshop, Ques 1:
select 'Instructor ' || substr(first_name, 1, 1)  || '. ' || rpad(last_name, 10, '.')
|| ' Phone: ' || phone "One_Line"
from instructor
order by last_name;

-- Chapter 4 Workshop, Ques 2:
select replace('I develop software on the Unix platform', 'Unix', 'Linux')
from dual;

-- Chapter 4 Workshop, Ques 3:
select student_id, last_name
from student
where substr(last_name,1,1) != initcap(substr(last_name,1,1));

-- Chapter 4 Workshop, Ques 4:
select phone
from instructor
where translate(phone, '0123456789', '##########') = '(###)-###-####';

-- Chapter 5 Workshop, Ques 1:
select section_id, course_no, to_char(start_date_time, 'HH:MI AM')
from Section
where to_char(start_date_time, 'HH:MI AM') = '10:30 AM';

-- Chapter 5 Workshop, Ques 2:
select to_char(start_date_time, 'Dy') "Day", section_id
from section
where section_id = '99' or section_id = '89' or section_id = '105'
order by to_char(start_date_time, 'Dy');

-- Chapter 5 Workshop, Ques 3:
SELECT unique to_char(NVL(cost, 0), 'L99G990D99') "Cost"
from course
order by to_char(NVL(cost, 0), 'L99G990D99');

-- Chapter 5 Workshop, Ques 4:
select grade_type_code, created_date
from grade_type
where to_char(created_date, 'YYYY') = '1998';

-- Chapter 5 Workshop, Ques 5:
select zip + 100
from zipcode;
--the code works but the first zero is lost

-- Chapter 5 Workshop, Ques 6:
select student_id, enroll_date
from enrollment
where to_char(enroll_date, 'DD-MON-YY') = '30-JAN-07';
