SELECT count(assistance_requests.*) AS total_assistances, students.name
from assistance_requests
join students ON assistance_requests.student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;