--total number of assignment submissions from each cohort
--select cohort name and total_submissions

SELECT cohorts.name, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY  total_submissions DESC;
