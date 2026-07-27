SELECT
    s.student_name,
    COUNT(e.course_id) AS total_courses
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id
GROUP BY s.student_name
HAVING COUNT(e.course_id) > 1;