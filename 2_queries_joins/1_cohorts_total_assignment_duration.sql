-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.
-- You can write as many JOIN statements as you need in a single query.

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
-- join students table by making students id = label of student_id (in assignments)
JOIN students ON students.id = student_id
-- join cohorts table by making cohorts id = label cohort_id (found in students)
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

-- FEB12(cohorts) -> id(cohorts) -> cohort_id(students) -> id(students) -> student_id(assignment_submissions)
