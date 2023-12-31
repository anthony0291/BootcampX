-- Assistance Requests Data
-- Each assistance request is related to a bunch of data like a teacher, student, an optional assignment, and more. We want to be able to see all important data about an assistance request.

-- Instruction
-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name if it has one, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.
-- Expected Result:

-- SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as assistance_requests_duration
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- JOIN students ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id;
-- ORDER BY duration;

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;