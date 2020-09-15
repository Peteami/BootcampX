SELECT day, count(assignments.*) AS number_of_assignments, sum(duration) as duration
from assignments
GROUP BY day
ORDER BY day;
