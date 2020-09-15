SELECT cohorts.name AS cohort, sum(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
from assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
Order BY total_duration;