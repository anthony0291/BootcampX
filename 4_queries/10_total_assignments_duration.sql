-- Total Assignments and duration
-- We need to be able to see the number of assignments that each day has and the total duration of assignments for each day.

-- Instruction
-- Get each day with the total number of assignments and the total duration of the assignments.

-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.


-- SELECT assignments.day as day, 
-- count(assignments.*) as total_number_of_assignments, 
-- sum(assignments.duration) as total_duration_of_assignments
-- FROM assignments
-- GROUP BY assignments.day
-- ORDER BY assignments.day;


SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;