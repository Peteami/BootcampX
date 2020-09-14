SELECT sum(assignment_submissions.duration) AS total_duration
from assignment_submissions 
join students ON student_id = students.id
where students.name = 'Ibrahim Schimmel';