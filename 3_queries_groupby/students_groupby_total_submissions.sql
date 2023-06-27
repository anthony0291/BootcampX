-- This will produce a table with the student's names, and the total submission for that student.

--select name(students table) and alias as student, 
-- count(ass_sub.column?) labeled as total_submissions
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
--start from assignment_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id;

-- Want: total_submissions for each student
--NEED:
--total_submissions(sum of ass.sub column)


--connect students to their assignment submissions
--student name gets student id
-- use id to find student_id(asssub)
