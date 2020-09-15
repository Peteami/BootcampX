SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests) AS total_requests
from assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;
