
3.	Relationship Modeling:
    •	student - enrollment: One to Many (One student can enroll in many courses)
    •	course - enrollment: One to Many (One course can have many students enrolled)
    •	department - faculty: One to Many (One department has many faculty members)
    •	faculty - research_project: One to Many (One faculty member can lead multiple research projects)
    •	research_project - publication: One to Many (One research project can produce multiple publications)
    •	course - assignment/quiz/exam/project: One to Many (One course can have many assessments)
    •	faculty - department: One to Many (One department can have many faculty members)
    •	building - department: One to Many (One building can house many departments)

4.	Access Patterns (Queries):
    1.	List all students enrolled in a specific course, along with their grades:

        SELECT s.first_name, s.last_name, g.grade
        FROM students s
        JOIN enrollments e ON s.student_id = e.student_id
        JOIN grades g ON e.enrollment_id = g.enrollment_id
        WHERE e.course_id = [CourseID];

    2.	Find all publications authored by faculty in the last five years:

        SELECT p.title, p.publication_date
        FROM publications p
        JOIN faculties f ON p.faculty_id = f.faculty_id
        WHERE p.publication_date >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR)
        AND f.faculty_id = [FacultyID];

    3.	Calculate the average GPA of students in a specific major:

        SELECT AVG(g.grade)
        FROM grades g
        JOIN enrollments e ON g.enrollment_id = e.enrollment_id
        JOIN students s ON e.student_id = s.student_id
        WHERE s.major = '[Major]';

    4.	Retrieve the schedule of courses offered by a department in a given semester:

        SELECT c.course_name, e.semester
        FROM courses c
        JOIN enrollments e ON c.course_id = e.course_id
        WHERE c.department_id = [DepartmentID]
        AND e.semester = '[Semester]';

    5.	Identify students who have utilized specific support services:

        SELECT s.first_name, s.last_name, ss.service_name
        FROM students s
        JOIN interactions i ON s.student_id = i.student_id
        JOIN support_services ss ON i.service_id = ss.service_id
        WHERE ss.service_name = '[ServiceName]';

    6.	List all faculty members involved in research projects funded by external grants:

        SELECT f.first_name, f.last_name, rp.title
        FROM faculties f
        JOIN research_projects rp ON f.faculty_id = rp.lead_faculty_id
        JOIN grants g ON rp.grant_id = g.grant_id;

    7.	Retrieve a list of all books and digital resources available in the library:

        SELECT lb.title, 'Book' AS resource_type
        FROM library_books lb
        UNION
        SELECT dr.title, 'Digital Resource' AS resource_type
        FROM digital_resources dr;

    8.	Identify students participating in a specific student organization:

        SELECT s.first_name, s.last_name
        FROM students s
        JOIN student_organizations so ON s.student_id = so.student_id
        WHERE so.organization_name = '[OrganizationName]';

    9.	Generate a report of financial transactions for a given period:

        SELECT ft.transaction_date, ft.amount, ft.transaction_type
        FROM financial_transactions ft
        WHERE ft.transaction_date BETWEEN '[StartDate]' AND '[EndDate]';

    10.	Find all faculty members with a specific rank:

        SELECT f.first_name, f.last_name, p.rank
        FROM faculties f
        JOIN professors p ON f.faculty_id = p.faculty_id
        WHERE p.rank = '[Rank]';
