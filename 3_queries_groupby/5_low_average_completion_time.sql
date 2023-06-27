-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

-- Select the name of the student, their average completion time, and the average suggested completion time.
-- Order by average completion time from smallest to largest.
-- Only get currently enrolled students.
-- This will require data from students, assignment_submissions, and assignments.

--student avg_time < average_completion_time

--SELECT students.name , student_avg_completion_time, average_suggested_completion_time


-- SELECT students.name, assignment_submissions.id, assignment_submissions.duration, assignments.id, 
-- FROM assignments
-- JOIN assignment_submissions ON assignment_submissions.assignment_id = assignments.id
-- JOIN students ON students.id = student_id
-- GROUP BY students.name;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;