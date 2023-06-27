SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;

-- Having clause is like where but for aggregate data:
-- count, sum, min/max, avg
-- Charlie Sheen Mixed Martial Arts
-- Count SUM, Min/Max, Avg

-- h(A)(V)in(G)