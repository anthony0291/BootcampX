-- Total Cohort Assistance Duration
-- We need to be able to see the total amount of time being spent on an assistance request for each cohort. This number will tell use how much time is being spent on assistance requests for each cohort.

-- Instruction
-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

-- SELECT cohorts.name, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;

SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;