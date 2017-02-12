/*
  File: Assignment2.sql

  Student's Name: Smitha Janardan

  Student's UT EID: ssj398
	 
  Course Name: CS 327E

  Unique Number: 52885

  Date Created: 02/13/12

  Date Last Modified: 02/13/12

*/

-- Chapter 6 Workshop, Ques 2:
select cost, count(*)
from course
group by cost;

-- Chapter 6 Workshop, Ques 3:
select count(zip)
from student
where zip like '10025';

-- Chapter 6 Workshop, Ques 4:
select employer
from student
group by employer
having count(*) > 4;

-- Chapter 6 Workshop, Ques 5:
select instructor_ID, count(*)
from section
group by instructor_ID;

-- Chapter 6 Workshop, Ques 6:
select count(*), start_date_time, location
from section
group by start_date_time, location
having count(*) > 1;
--this finds classes that are at the same time and place 

-- Chapter 6 Workshop, Ques 7:
select section_ID, max(numeric_grade)
from grade
where grade_type_code = 'MT'
group by section_ID;

-- Chapter 7 Workshop, Ques 1:
select c.description, s.section_ID, s.location
from section s join course c
using (course_NO)
where location = 'L211';

-- Chapter 7 Workshop, Ques 2:
select description, section_no, start_date_time
from   course c, section s, enrollment e, student st
where c.course_no = s.course_no
and s.section_id = e.section_id
and e.student_id = st.student_id
and st.last_name = 'German'
and st.first_name = 'Joseph';

-- Chapter 7 Workshop, Ques 3:
select instructor_ID, last_name, section_ID
from instructor i join section s
using (instructor_ID)
join grade_type_weight gt
using (section_ID)
where gt.grade_type_code = 'PA'
and gt.percent_of_final_grade = '25';

-- Chapter 7 Workshop, Ques 4:
select last_name, first_name
from student s join grade g
using (student_id)
where g.grade_type_code = 'PJ'
and numeric_grade >= '99';

-- Chapter 7 Workshop, Ques 5:
select numeric_grade
from grade join student
using (student_id)
where grade_type_code = 'QZ'
and zip = '10956';

-- Chapter 7 Workshop, Ques 6:
select course_no, section_id, last_name, first_name
from instructor join section
using (instructor_id)
join course
using (course_no)
where prerequisite = '350';
