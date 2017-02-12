create table SD_grade_summary
  (student_id decimal(8),
   midterm_grade decimal(3),
   finalexam_grade decimal(3),
   quiz_grade decimal(3)
   );

insert into SD_grade_summary values (123, 90, 50, 100);
insert into SD_grade_summary values (456, 80, 95, null);
insert into SD_grade_summary values (678, null, null, 98);
insert into SD_grade_summary values (789, null, 78, 85);
insert into SD_grade_summary values (999, null, null, null);
commit;

create table SD_float_test
  (test_col float);

insert into SD_float_test (test_col) values (2.5);
insert into SD_float_test (test_col) values (null);
commit;

create table SD_date_example
  (col_date datetime,
   col_timestamp timestamp, 
   col_timestamp_w_tz timestamp,
   col_timestamp_w_local_tz timestamp
   );
insert into SD_date_example (col_date, col_timestamp, col_timestamp_w_tz, col_timestamp_w_local_tz) values (STR_TO_DATE('24-feb-2009 16:25:32', '%d-%b-%Y %T'), UNIX_TIMESTAMP(STR_TO_DATE('24-feb-2009 16:25:32.000000', '%d-%b-%Y %T.%f'), UNIX_TIMESTAMP(STR_TO_DATE('24-feb-2009 16:25:32.000000 -5:00', '%d-%b-%Y %T.&f %z'), UNIX_TIMESTAMP(STR_TO_DATE('24-feb-2009 16:25:32.000000', '%d-%b-%Y %T.%f'));
commit;

create table SD_meeting
(meeting_id decimal(10,0),
 meeting_start datetime,
 meeting_end datetime);

insert into SD_meeting values (1, str_to_date('01-jul-2009 9:30am', '%d-%b-%Y %T%p'), str_to_date('01-jul-2009 10:30am', '%d-%b-%Y %T%p'));
insert into SD_meeting values (2, str_to_date('01-jul-2009 3:00pm', '%d-%b-%Y %T%p'), str_to_date('01-jul-2009 4:30pm', '%d-%b-%Y %T%p'));
commit;

create table SD_conversion_example
  (course_no varchar(9));
insert into SD_conversion_example values ('123');
insert into SD_conversion_example values ('xyz');
commit;

create table SD_t1
  (col1 decimal(1));
create table SD_t2
  (col2 decimal(1));
create table SD_t3
  (col3 decimal(1));

insert into SD_t1 values (1);
insert into SD_t1 values (2);
insert into SD_t1 values (3);

insert into SD_t2 values (2);
insert into SD_t2 values (3);
insert into SD_t2 values (4);

insert into SD_t3 values (2);
insert into SD_t3 values (3);
insert into SD_t3 values (5);

commit;

create table SD_intro_course
(course_no decimal(8),
 description_tx varchar(50),
 cost decimal(9,2),
 prereq_no decimal(8),
 created_by varchar(30),
 created_date datetime,
 modified_by varchar(30),
 modified_date datetime);

create table SD_section_history 
( section_id      decimal(8),
  start_date_time datetime,
  course_no       decimal(8),
  section_no      decimal(3));
 
create table SD_capacity_history
( section_id decimal(8),
  location   varchar(50),
  capacity   decimal(3));

create table SD_grade_distribution
 (section_id decimal(8),
  grade_a    decimal(4,0),
  grade_b    decimal(4,0),
  grade_c    decimal(4,0),
  grade_d    decimal(4,0),
  grade_f    decimal(4,0));

insert into SD_grade_distribution values (400, 5, 10,3, 0, 0);
insert into SD_grade_distribution values (401, 1, 3,5, 1, 0);
insert into SD_grade_distribution values (402, 5, 10,3, 0, 1);
commit;
 
create table SD_grade_distribution_normalized
(section_id decimal(8),
 letter_grade varchar(2),
 num_of_students decimal(4,0));
 
create table SD_ta
 (id decimal(1),
  col1 varchar(4));
  
create table SD_tb
 (id decimal(1),
  col2 varchar(4));
  
insert into SD_ta values (1, 'a');
insert into SD_ta values (2, 'b');
insert into SD_ta values (3, 'c');
insert into SD_ta values (4, 'd');

insert into SD_tb values (1, 'w');
insert into SD_tb values (2, 'x');
insert into SD_tb values (5, 'y');
insert into SD_tb values (6, 'z');
commit;

create table SD_employee
 (employee_id decimal(1),
  name varchar(10),
  salary decimal(4),
  title varchar(10));

create table SD_employee_change
 (employee_id decimal(1),
  name varchar(10),
  salary decimal(4),
  title varchar(10));
  
insert into SD_employee values (1, 'john', 1000, 'analyst');
insert into SD_employee values (2, 'mary', 2000, 'manager');
insert into SD_employee values (3, 'stella', 5000, 'president');
insert into SD_employee values (4, 'fred', 500, 'janitor');

insert into SD_employee_change (employee_id, name, title, salary) values (1, 'john','programmer', 1500);
insert into SD_employee_change (employee_id, name, title, salary) values (3, 'stella', 'ceo', 6000);
insert into SD_employee_change (employee_id, name, title, salary) values (4, 'fred', 'clerk', 600);
insert into SD_employee_change (employee_id, name, title, salary) values (5, 'jean', 'secretary', 800);
insert into SD_employee_change (employee_id, name, title, salary) values (6, 'betsy', 'sales rep', 2000);
commit;

create table SD_zipcode_example
(zip             varchar(5) comment 'regular expression examples');

insert into SD_zipcode_example (zip) values ('ab123');
insert into SD_zipcode_example (zip) values ('123xy');
insert into SD_zipcode_example (zip) values ('007ab');
insert into SD_zipcode_example (zip) values ('abcxy');
insert into SD_zipcode_example (zip) values ('10025');
commit;

create table SD_course_revenue
( course_no       decimal(8) not null comment 'the course_no of a course.',
  revenue         decimal(6) comment 'the revenue generated by the respective course_no.',
  course_fee      decimal(9,2) comment 'the amount charged for enrollment in individual course.',
  num_enrolled    decimal(3) comment 'stores the decimal of students enrolled in the course.',
  num_of_sections decimal(1) comment 'stores the decimal of section each course per course.');

insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (10, 1195, 1195, 1, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (20, 10755, 1195, 9, 4);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (25, 53775, 1195, 45, 8);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (100, 15535, 1195, 13, 5);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (120, 27485, 1195, 23, 6);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (122, 28680, 1195, 24, 5);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (124, 9560, 1195, 8, 3);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (125, 9560, 1195, 8, 4);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (130, 9560, 1195, 8, 3);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (132, 2390, 1195, 2, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (134, 2390, 1195, 2, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (135, 4380, 1095, 4, 3);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (140, 17925, 1195, 15, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (142, 8365, 1195, 7, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (145, 2390, 1195, 2, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (146, 3585, 1195, 3, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (147, 5975, 1195, 5, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (204, 1195, 1195, 1, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (230, 15330, 1095, 14, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (240, 14235, 1095, 13, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (310, 4780, 1195, 4, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (330, 3585, 1195, 3, 1);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (350, 10755, 1195, 9, 2);
insert into SD_course_revenue (course_no, revenue, course_fee, num_enrolled, num_of_sections) values (420, 2390, 1195, 2, 1);
commit;

create table SD_instructor_summary
(
  instructor_id   decimal(8) not null,
  gender          char(1),
  campus          varchar(11),
  semester_year   varchar(4) not null,
  semester_month  varchar(2) not null,
  num_of_classes  decimal(2),
  num_of_students decimal(2),
  revenue         decimal(5),
  primary key (instructor_id,semester_year,semester_month));

insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (101, 'm', 'liberty', '2007', '06', 9, 45, 51380);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (102, 'm', 'morningside', '2007', '07', 10, 21, 28580);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (103, 'f', 'morningside', '2008', '07', 10, 37, 44215);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (104, 'm', null, '2007', '07', 10, 25, 29675);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (105, 'f', 'liberty', '2007', '06', 10, 16, 23800);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (106, 'u', 'morningside', '2007', '07', 10, 18, 24995);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (107, 'u', 'downtown', '2007', '07', 10, 31, 38135);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (108, 'm', 'morningside', '2007', '07', 9, 33, 41625);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue) values (109, 'u', 'liberty', '2007', '05', 0, 0, 0);
insert into SD_instructor_summary (instructor_id, gender, campus, semester_year, semester_month, num_of_classes, num_of_students, revenue)values (110, 'f', null, '2007', '05', 0, 0, 0);
commit;

create table SD_model_example
(
  course    varchar(30),
  gender    char(1),
  year      decimal(4),
  enroll_no decimal(2));

insert into SD_model_example (gender, year, enroll_no, course) values ('f', 2008, 37, 'spanish i');
insert into SD_model_example (gender, year, enroll_no, course) values ('m', 2008, 3, 'spanish i');
insert into SD_model_example (gender, year, enroll_no, course) values ('f', 2008, 59, 'spanish ii');
insert into SD_model_example (gender, year, enroll_no, course) values ('m', 2008, 35, 'spanish ii');
insert into SD_model_example (gender, year, enroll_no, course) values ('f', 2008, 3, 'spanish iii');
insert into SD_model_example (gender, year, enroll_no, course) values ('m', 2008, 34, 'spanish iii');
commit;