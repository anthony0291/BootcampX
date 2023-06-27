-- Get the total number of assignments for each day of bootcamp.

-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.

-- total number of assignments
-- select day and total assigments
--only requires assignment table
--assignments.day
--assignments.id
--Want: total number of assignments by day

--Need: 
--assignments by day

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;
