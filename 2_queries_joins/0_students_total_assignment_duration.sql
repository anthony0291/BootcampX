-- Instruction
-- Get the total amount of time that a student has spent on all assignments.

-- This should work for any student but use 'Ibrahim Schimmel' for now.
-- Select only the total amount of time as a single column.


-- get all the assignment_submission durations and sum under label: total_duration
SELECT sum(assignment_submissions.duration) as total_duration
--get it from assignment_submissions
FROM assignment_submissions
-- join students table by students id = student_id
JOIN students ON students.id = student_id
--ask for name matching Ibrahim
WHERE students.name = 'Ibrahim Schimmel';