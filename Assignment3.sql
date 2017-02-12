/*
  File: Assignment3.sql

  Student's Name: Smitha Janardan

  Student's UT EID: ssj398
	 
  Course Name: CS 327E

  Unique Number: 52885

  Date Created: 02/22/12

  Date Last Modified: 02/23/12

*/

-- Chapter 8 Workshop, Ques 1:
SELECT section_id
FROM enrollment
WHERE student_id = (SELECT student_id
                    FROM student
                    WHERE last_name = 'Masser'
                    AND first_name = 'Henry');
                    
-- Chapter 8 Workshop, Ques 3:
SELECT course_no, description
FROM course LEFT OUTER JOIN section
USING (course_no)
WHERE section_id NOT IN (SELECT DISTINCT section_id
                         FROM enrollment)
OR section_id IS NULL;

-- Chapter 8 Workshop, Ques 6:
SELECT zip
FROM (SELECT zip
      FROM student
      GROUP BY zip
      ORDER BY count(zip) desc)
WHERE rownum < 4;

-- Chapter 9 Workshop, Ques 1:
SELECT zip
FROM zipcode
MINUS
SELECT zip
FROM student
MINUS
SELECT zip
FROM instructor;

SELECT zip
FROM zipcode
MINUS
(SELECT zip
FROM student
UNION
SELECT zip
FROM instructor);

-- Chapter 9 Workshop, Ques 2:
SELECT student_id, REGISTRATION_DATE
FROM student
intersect
select student_id, enroll_date
FROM enrollment;

-- Chapter 9 Workshop, Ques 3:
SELECT student_id
FROM student
MINUS
SELECT student_id
FROM enrollment;

SELECT student_id
FROM student
WHERE student_id NOT IN (SELECT student_id
                         FROM enrollment);
                         
SELECT student_id
FROM student s
WHERE NOT EXISTS (SELECT '*'
                  FROM enrollment e
                  WHERE s.student_id = e.student_id);

-- Chapter 9 Workshop, Ques 4:
SELECT section_id, student_id
FROM enrollment
INTERSECT
SELECT section_id, student_id
FROM grade;

SELECT section_id, student_id
FROM enrollment
WHERE (section_id, student_id)  IN (SELECT section_id, student_id
                                    FROM grade);
                                    
SELECT section_id, student_id
FROM enrollment e
WHERE EXISTS (SELECT '*'
              FROM grade g
              WHERE e.section_id = g.section_id
              AND e.student_id= g.student_id);
              
SELECT DISTINCT section_id, student_id
FROM enrollment JOIN grade
USING (section_id, student_id);

-- Chapter 10 Workshop, Ques 1:
SELECT DISTINCT a.first_name, a.last_name, zip
FROM instructor a Join instructor b
USING (zip)
WHERE a.instructor_id <> b.instructor_id
ORDER BY zip;

-- Chapter 10 Workshop, Ques 2:
SELECT a.section_id, start_date_time
FROM section a JOIN section b
USING (start_date_time, location)
WHERE a.section_id <> b.section_id
ORDER BY start_date_time;

-- Chapter 10 Workshop, Ques 3:
SELECT DISTINCT instructor_id, a.section_id, start_date_time
FROM section a JOIN section b
USING (start_date_time, instructor_id)
WHERE a.section_id <> b.section_id
ORDER BY instructor_id, start_date_time;

-- Chapter 10 Workshop, Ques 4:
SELECT course_no, description, cost, section_id
FROM course LEFT OUTER JOIN section
USING (course_no)
WHERE cost >= 1195;

-- Chapter 10 Workshop, Ques 5:
SELECT section_id, student_id
FROM section LEFT OUTER JOIN enrollment
USING (section_id)
WHERE location = 'L210';