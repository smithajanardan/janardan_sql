/*
  File: Assignment4.sql

  Student's Name: Smitha Janardan

  Student's UT EID: ssj398
	 
  Course Name: CS 327E

  Unique Number: 52885

  Date Created: 03/03/2012

  Date Last Modified: 03/03/2012

*/

-- Chapter 11 Workshop, Ques 1:
insert into zipcode
values
  ('02199', 'Newton', 'MA', user, sysdate, user, sysdate);
  
insert into zipcode
values
  ('43011', 'Cleveland', 'OH', user, sysdate, user, sysdate);

-- Chapter 11 Workshop, Ques 2:
insert into student
  (student_id, first_name, last_name, zip, registration_date, created_by,
   created_date, modified_by, modified_date)
values
  (900, 'Smitha', 'Janardan', '02199', to_date('08-MAR-2012', 'DD-MON-YYYY'),
   user, sysdate, user, sysdate);

-- Chapter 11 Workshop, Ques 3:
update student
set modified_date = sysdate,
    salutation = 'Pres.',
    street_address = '100 First St.',
    phone = '555-1234',
    employer = 'U.S.A.'
where first_name = 'Smitha'
and last_name = 'Janardan';

-- Chapter 11 Workshop, Ques 4:
delete from student
where first_name = 'Smitha'
and last_name = 'Janardan';

delete from zipcode
where zip = '02199'
or zip = '43011';

-- Chapter 11 Workshop, Ques 5:
delete from zipcode
where zip = '10954';
-- cannnot delete because it is the foreign key for students
-- in the student table

-- Chapter 12 Workshop, Ques 1:
create table TEMP_STUDENT
(STUDID NUMBER(8,0) not null primary key, FIRST_NAME varchar2(30),
 LAST_NAME varchar2(30), ZIP varchar2(5) references zipcode(zip),
 REGISTRATION_DATE date not null check (REGISTRATION_DATE >
 TO_DATE('01-JAN-2000', 'DD-MON-YYYY')));

-- Chapter 12 Workshop, Ques 2:
insert into temp_student
values
 (900, 'Sam', 'Jordan', '53203', sysdate);
 
insert into temp_student
values
 (900, 'Sam', 'Jordan', '07030', sysdate);

-- Chapter 12 Workshop, Ques 3:
alter table temp_student
add (EMPLOYER varchar2(50), 
     EMPLOYER_ZIP varchar2(5) references zipcode(zip));

update temp_student
set employer = 'U.S.A.'
where first_name = 'Sam';

alter table temp_student
modify (employer varchar2(50) not null);

drop table temp_student;

-- Chapter 13 Workshop, Ques 1:
-- managers can view the salary of their employees only

-- Chapter 13 Workshop, Ques 2:
-- any column used frequently in where clauses

-- Chapter 13 Workshop, Ques 3:
-- this rebuilds a pre-existing index

-- Chapter 13 Workshop, Ques 4:
-- no, because they can only be stored if they are combined
-- with something else