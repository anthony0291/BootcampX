-- Name of Teachers That Assisted
-- We need to know which teachers actually assisted students during any cohort.

-- Instruction
-- Get the name of all teachers that performed an assistance request during a cohort.

-- Select the instructor's name and the cohort's name.
-- Don't repeat the instructor's name in the results list.
-- Order by the instructor's name.
-- This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.


-- SELECT teachers.name, cohorts.name, sum(assistance_requests.*) as total_assist_request
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'JUL02';

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
