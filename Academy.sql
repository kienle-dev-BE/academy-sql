-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 15, 2024 lúc 08:36 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Academy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Assignments`
--

CREATE TABLE `Assignments` (
  `assignment_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Assignments`
--

INSERT INTO `Assignments` (`assignment_id`, `course_id`, `title`, `description`, `due_date`) VALUES
(1, 1, 'Assignment 1', 'Basic programming tasks', '2024-10-15'),
(2, 2, 'Homework 1', 'Differentiation exercises', '2024-11-01'),
(3, 3, 'Lab Report 1', 'Quantum theory experiments', '2024-11-20'),
(4, 4, 'Project 1', 'Thermodynamics experiments', '2024-12-10'),
(5, 5, 'Report 1', 'Organic synthesis report', '2024-12-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Athletic_Teams`
--

CREATE TABLE `Athletic_Teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Athletic_Teams`
--

INSERT INTO `Athletic_Teams` (`team_id`, `team_name`, `description`) VALUES
(1, 'Soccer Team', 'University soccer team'),
(2, 'Basketball Team', 'University basketball team'),
(3, 'Tennis Team', 'University tennis team'),
(4, 'Track and Field', 'University track and field team'),
(5, 'Swimming Team', 'University swimming team');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Buildings`
--

CREATE TABLE `Buildings` (
  `building_id` int(11) NOT NULL,
  `building_name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Buildings`
--

INSERT INTO `Buildings` (`building_id`, `building_name`, `location`) VALUES
(1, 'Main Science Building', 'North Campus'),
(2, 'Mathematics Hall', 'East Campus'),
(3, 'Engineering Lab', 'South Campus'),
(4, 'Chemistry Wing', 'West Campus'),
(5, 'Physics Observatory', 'Central Campus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Clubs`
--

CREATE TABLE `Clubs` (
  `club_id` int(11) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Clubs`
--

INSERT INTO `Clubs` (`club_id`, `club_name`, `description`) VALUES
(1, 'Coding Club', 'Club for programming and coding activities'),
(2, 'Mathletes', 'Competitive math club'),
(3, 'Physics Club', 'Club focused on physics experiments and talks'),
(4, 'Engineering Innovations', 'Club for engineering projects and innovation'),
(5, 'Chemistry Experiments', 'Club for chemistry hands-on activities');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Courses`
--

CREATE TABLE `Courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `syllabus` text DEFAULT NULL,
  `grading_scheme` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Courses`
--

INSERT INTO `Courses` (`course_id`, `course_name`, `department_id`, `syllabus`, `grading_scheme`) VALUES
(1, 'Introduction to Programming', 1, 'Basics of programming, data structures', 'Homework 30%, Exams 70%'),
(2, 'Calculus I', 2, 'Differentiation and integration', 'Homework 40%, Final Exam 60%'),
(3, 'Quantum Mechanics', 3, 'Principles of quantum theory', 'Assignments 30%, Midterm 30%, Final Exam 40%'),
(4, 'Thermodynamics', 4, 'Laws of thermodynamics, heat transfer', 'Labs 50%, Exams 50%'),
(5, 'Organic Chemistry', 5, 'Chemical reactions and mechanisms', 'Quizzes 20%, Lab Reports 30%, Final Exam 50%');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Departments`
--

CREATE TABLE `Departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `building_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Departments`
--

INSERT INTO `Departments` (`department_id`, `department_name`, `building_id`) VALUES
(1, 'Computer Science', 1),
(2, 'Mathematics', 2),
(3, 'Physics', 1),
(4, 'Engineering', 3),
(5, 'Chemistry', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Digital_Resources`
--

CREATE TABLE `Digital_Resources` (
  `resource_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Digital_Resources`
--

INSERT INTO `Digital_Resources` (`resource_id`, `title`, `url`) VALUES
(1, 'AI Research Paper', 'http://example.com/ai_research'),
(2, 'Mathematical Modeling Techniques', 'http://example.com/math_models'),
(3, 'Quantum Computing Overview', 'http://example.com/quantum_computing'),
(4, 'Engineering Design Innovations', 'http://example.com/eng_design'),
(5, 'Organic Chemistry Methods', 'http://example.com/org_chem');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Enrollments`
--

CREATE TABLE `Enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Enrollments`
--

INSERT INTO `Enrollments` (`enrollment_id`, `student_id`, `course_id`, `semester`) VALUES
(1, 1, 1, 'Fall 2024'),
(2, 2, 2, 'Spring 2024'),
(3, 3, 3, 'Fall 2024'),
(4, 4, 4, 'Spring 2024'),
(5, 5, 5, 'Fall 2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Exams`
--

CREATE TABLE `Exams` (
  `exam_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Exams`
--

INSERT INTO `Exams` (`exam_id`, `course_id`, `title`, `date`) VALUES
(1, 1, 'Midterm Exam', '2024-11-05'),
(2, 2, 'Final Exam', '2024-12-15'),
(3, 3, 'Midterm Exam', '2024-12-01'),
(4, 4, 'Final Exam', '2024-12-15'),
(5, 5, 'Final Exam', '2024-12-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Facilities`
--

CREATE TABLE `Facilities` (
  `facility_id` int(11) NOT NULL,
  `facility_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Facilities`
--

INSERT INTO `Facilities` (`facility_id`, `facility_name`, `description`) VALUES
(1, 'Gymnasium', 'Main gymnasium for sports and fitness'),
(2, 'Library', 'University library with extensive resources'),
(3, 'Research Lab', 'Lab for scientific research and experiments'),
(4, 'Student Center', 'Center for student activities and events'),
(5, 'Auditorium', 'Venue for lectures and performances');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Faculties`
--

CREATE TABLE `Faculties` (
  `faculty_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Faculties`
--

INSERT INTO `Faculties` (`faculty_id`, `first_name`, `last_name`, `email`, `phone`, `department_id`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1111', 1),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '555-2222', 2),
(3, 'Michael', 'Smith', 'michael.smith@example.com', '555-3333', 3),
(4, 'Emily', 'Jones', 'emily.jones@example.com', '555-4444', 4),
(5, 'Sarah', 'Williams', 'sarah.williams@example.com', '555-5555', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Financial_Transactions`
--

CREATE TABLE `Financial_Transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Financial_Transactions`
--

INSERT INTO `Financial_Transactions` (`transaction_id`, `transaction_date`, `amount`, `transaction_type`) VALUES
(1, '2024-08-01', 500.00, 'Tuition Payment'),
(2, '2024-08-15', 300.00, 'Library Fee'),
(3, '2024-09-01', 150.00, 'Student Organization Fee'),
(4, '2024-10-01', 200.00, 'Lab Equipment Purchase'),
(5, '2024-11-01', 100.00, 'Athletic Fee');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Grades`
--

CREATE TABLE `Grades` (
  `grade_id` int(11) NOT NULL,
  `enrollment_id` int(11) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `grade` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Grades`
--

INSERT INTO `Grades` (`grade_id`, `enrollment_id`, `assignment_id`, `quiz_id`, `exam_id`, `project_id`, `grade`) VALUES
(1, 1, 1, NULL, 1, NULL, 88.50),
(2, 2, 2, NULL, 2, NULL, 92.00),
(3, 3, 3, NULL, 3, NULL, 85.75),
(4, 4, 4, NULL, 4, NULL, 90.25),
(5, 5, 5, NULL, 5, NULL, 87.50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Grants`
--

CREATE TABLE `Grants` (
  `grant_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `funding_agency` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Grants`
--

INSERT INTO `Grants` (`grant_id`, `title`, `amount`, `funding_agency`, `start_date`, `end_date`) VALUES
(1, 'AI Research Grant', 50000.00, 'National Science Foundation', '2024-01-01', '2024-12-31'),
(2, 'Mathematics Model Funding', 30000.00, 'Mathematics Society', '2024-02-01', '2024-11-30'),
(3, 'Quantum Computing Grant', 60000.00, 'Tech Innovations Fund', '2024-03-01', '2024-12-31'),
(4, 'Engineering Design Grant', 40000.00, 'Engineering Board', '2024-04-01', '2024-12-31'),
(5, 'Chemistry Innovation Funding', 35000.00, 'Chemical Research Foundation', '2024-05-01', '2024-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Journals`
--

CREATE TABLE `Journals` (
  `journal_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `issn` varchar(20) DEFAULT NULL,
  `volume` varchar(20) DEFAULT NULL,
  `issue` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Journals`
--

INSERT INTO `Journals` (`journal_id`, `title`, `issn`, `volume`, `issue`) VALUES
(1, 'Journal of AI Research', '1234-5678', '10', '2'),
(2, 'Mathematics Journal', '2345-6789', '15', '4'),
(3, 'Quantum Computing Journal', '3456-7890', '5', '1'),
(4, 'Engineering Design Review', '4567-8901', '8', '3'),
(5, 'Chemical Innovations Review', '5678-9012', '12', '6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Lecturers`
--

CREATE TABLE `Lecturers` (
  `faculty_id` int(11) NOT NULL,
  `contract_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Lecturers`
--

INSERT INTO `Lecturers` (`faculty_id`, `contract_end_date`) VALUES
(1, '2025-06-30'),
(2, '2024-05-15'),
(3, '2026-08-01'),
(4, '2024-12-31'),
(5, '2025-03-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Library_Books`
--

CREATE TABLE `Library_Books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `available_copies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Library_Books`
--

INSERT INTO `Library_Books` (`book_id`, `title`, `author`, `isbn`, `available_copies`) VALUES
(1, 'Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', 5),
(2, 'Calculus: Early Transcendentals', 'James Stewart', '9781285741550', 4),
(3, 'Quantum Mechanics: A Modern Development', 'Leslie E. Ballentine', '9789810212754', 3),
(4, 'Engineering Mechanics: Dynamics', 'James L. Meriam', '9781118329575', 6),
(5, 'Organic Chemistry', 'David R. Klein', '9781119604698', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Professors`
--

CREATE TABLE `Professors` (
  `faculty_id` int(11) NOT NULL,
  `rank` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Professors`
--

INSERT INTO `Professors` (`faculty_id`, `rank`) VALUES
(1, 'Professor'),
(2, 'Associate Professor'),
(3, 'Assistant Professor'),
(4, 'Professor'),
(5, 'Associate Professor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Projects`
--

CREATE TABLE `Projects` (
  `project_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `submission_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Projects`
--

INSERT INTO `Projects` (`project_id`, `course_id`, `title`, `description`, `submission_date`) VALUES
(1, 1, 'Project 1', 'Final project for programming course', '2024-12-20'),
(2, 2, 'Project 2', 'Calculus project on integration', '2024-12-20'),
(3, 3, 'Project 3', 'Research project in quantum mechanics', '2024-12-20'),
(4, 4, 'Project 4', 'Thermodynamics research project', '2024-12-20'),
(5, 5, 'Project 5', 'Organic chemistry synthesis', '2024-12-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Publications`
--

CREATE TABLE `Publications` (
  `publication_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `publication_date` date DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `journal` varchar(100) DEFAULT NULL,
  `conference` varchar(100) DEFAULT NULL,
  `book` varchar(100) DEFAULT NULL,
  `research_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Publications`
--

INSERT INTO `Publications` (`publication_id`, `title`, `publication_date`, `authors`, `journal`, `conference`, `book`, `research_id`) VALUES
(1, 'AI for the Future', '2024-06-15', 'John Doe, Alice Johnson', 'Journal of AI Research', NULL, NULL, 1),
(2, 'Modeling Techniques', '2024-07-20', 'Jane Doe', 'Mathematics Journal', NULL, NULL, 2),
(3, 'Quantum Leaps', '2024-08-25', 'Michael Smith', NULL, 'Quantum Computing Conference', NULL, 3),
(4, 'Design Innovations', '2024-09-10', 'Emily Jones', NULL, NULL, 'Engineering Design Book', 4),
(5, 'Organic Methods', '2024-10-05', 'Sarah Williams', 'Chemistry Review', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Quizzes`
--

CREATE TABLE `Quizzes` (
  `quiz_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Quizzes`
--

INSERT INTO `Quizzes` (`quiz_id`, `course_id`, `title`, `date`) VALUES
(1, 1, 'Quiz 1', '2024-10-01'),
(2, 2, 'Quiz 2', '2024-11-05'),
(3, 3, 'Quiz 3', '2024-11-15'),
(4, 4, 'Quiz 4', '2024-12-01'),
(5, 5, 'Quiz 5', '2024-12-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Research_Projects`
--

CREATE TABLE `Research_Projects` (
  `research_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `lead_faculty_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Research_Projects`
--

INSERT INTO `Research_Projects` (`research_id`, `title`, `description`, `lead_faculty_id`, `start_date`, `end_date`) VALUES
(1, 'AI Research', 'Research on AI algorithms and applications', 1, '2024-01-01', '2024-12-31'),
(2, 'Mathematical Models', 'Developing new mathematical models for data analysis', 2, '2024-02-01', '2024-11-30'),
(3, 'Quantum Computing', 'Exploring the potential of quantum computing', 3, '2024-03-01', '2024-12-31'),
(4, 'Engineering Design', 'Innovative engineering design projects', 4, '2024-04-01', '2024-12-31'),
(5, 'Chemistry Innovations', 'New methods in organic chemistry', 5, '2024-05-01', '2024-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Resources`
--

CREATE TABLE `Resources` (
  `resource_id` int(11) NOT NULL,
  `resource_type` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Resources`
--

INSERT INTO `Resources` (`resource_id`, `resource_type`, `description`, `availability`) VALUES
(1, 'Lab Equipment', 'Advanced computing lab equipment', 1),
(2, 'Books', 'Textbooks and reference materials', 1),
(3, 'Software', 'Specialized research software', 0),
(4, 'Chemicals', 'Various chemicals for experiments', 1),
(5, 'Hardware', 'Computing hardware for research', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Scholarships`
--

CREATE TABLE `Scholarships` (
  `scholarship_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `awarded_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Scholarships`
--

INSERT INTO `Scholarships` (`scholarship_id`, `student_id`, `amount`, `awarded_date`) VALUES
(1, 1, 1000.00, '2024-07-15'),
(2, 2, 1500.00, '2024-07-15'),
(3, 3, 2000.00, '2024-07-15'),
(4, 4, 1200.00, '2024-07-15'),
(5, 5, 1800.00, '2024-07-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Students`
--

CREATE TABLE `Students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Students`
--

INSERT INTO `Students` (`student_id`, `first_name`, `last_name`, `dob`, `email`, `phone`, `major`) VALUES
(1, 'Alice', 'Johnson', '2001-03-14', 'alice.johnson@example.com', '555-1234', 'Computer Science'),
(2, 'Bob', 'Smith', '2002-06-25', 'bob.smith@example.com', '555-5678', 'Mathematics'),
(3, 'Charlie', 'Brown', '2001-11-30', 'charlie.brown@example.com', '555-8765', 'Physics'),
(4, 'Diana', 'Prince', '2000-02-12', 'diana.prince@example.com', '555-4321', 'Engineering'),
(5, 'Edward', 'Norton', '2002-07-18', 'edward.norton@example.com', '555-3456', 'Chemistry');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Student_Organizations`
--

CREATE TABLE `Student_Organizations` (
  `organization_id` int(11) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Student_Organizations`
--

INSERT INTO `Student_Organizations` (`organization_id`, `organization_name`, `description`) VALUES
(1, 'Computer Science Club', 'Club for computer science enthusiasts'),
(2, 'Math Society', 'Society for math lovers'),
(3, 'Physics Enthusiasts', 'Group for physics students and professionals'),
(4, 'Engineering Society', 'Engineering-focused student group'),
(5, 'Chemistry Club', 'Club dedicated to chemistry discussions and activities');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Teaching_Assistants`
--

CREATE TABLE `Teaching_Assistants` (
  `faculty_id` int(11) NOT NULL,
  `supervisor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Teaching_Assistants`
--

INSERT INTO `Teaching_Assistants` (`faculty_id`, `supervisor_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Tuition_Fees`
--

CREATE TABLE `Tuition_Fees` (
  `tuition_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Tuition_Fees`
--

INSERT INTO `Tuition_Fees` (`tuition_id`, `student_id`, `amount`, `payment_date`) VALUES
(1, 1, 5000.00, '2024-08-01'),
(2, 2, 5000.00, '2024-08-01'),
(3, 3, 5000.00, '2024-08-01'),
(4, 4, 5000.00, '2024-08-01'),
(5, 5, 5000.00, '2024-08-01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Assignments`
--
ALTER TABLE `Assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `Athletic_Teams`
--
ALTER TABLE `Athletic_Teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Chỉ mục cho bảng `Buildings`
--
ALTER TABLE `Buildings`
  ADD PRIMARY KEY (`building_id`);

--
-- Chỉ mục cho bảng `Clubs`
--
ALTER TABLE `Clubs`
  ADD PRIMARY KEY (`club_id`);

--
-- Chỉ mục cho bảng `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Chỉ mục cho bảng `Digital_Resources`
--
ALTER TABLE `Digital_Resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Chỉ mục cho bảng `Enrollments`
--
ALTER TABLE `Enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `Exams`
--
ALTER TABLE `Exams`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `Facilities`
--
ALTER TABLE `Facilities`
  ADD PRIMARY KEY (`facility_id`);

--
-- Chỉ mục cho bảng `Faculties`
--
ALTER TABLE `Faculties`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Chỉ mục cho bảng `Financial_Transactions`
--
ALTER TABLE `Financial_Transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `Grades`
--
ALTER TABLE `Grades`
  ADD PRIMARY KEY (`grade_id`),
  ADD KEY `enrollment_id` (`enrollment_id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Chỉ mục cho bảng `Grants`
--
ALTER TABLE `Grants`
  ADD PRIMARY KEY (`grant_id`);

--
-- Chỉ mục cho bảng `Journals`
--
ALTER TABLE `Journals`
  ADD PRIMARY KEY (`journal_id`),
  ADD UNIQUE KEY `issn` (`issn`);

--
-- Chỉ mục cho bảng `Lecturers`
--
ALTER TABLE `Lecturers`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Chỉ mục cho bảng `Library_Books`
--
ALTER TABLE `Library_Books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Chỉ mục cho bảng `Professors`
--
ALTER TABLE `Professors`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Chỉ mục cho bảng `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `Publications`
--
ALTER TABLE `Publications`
  ADD PRIMARY KEY (`publication_id`),
  ADD KEY `research_id` (`research_id`);

--
-- Chỉ mục cho bảng `Quizzes`
--
ALTER TABLE `Quizzes`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `Research_Projects`
--
ALTER TABLE `Research_Projects`
  ADD PRIMARY KEY (`research_id`),
  ADD KEY `lead_faculty_id` (`lead_faculty_id`);

--
-- Chỉ mục cho bảng `Resources`
--
ALTER TABLE `Resources`
  ADD PRIMARY KEY (`resource_id`);

--
-- Chỉ mục cho bảng `Scholarships`
--
ALTER TABLE `Scholarships`
  ADD PRIMARY KEY (`scholarship_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `Student_Organizations`
--
ALTER TABLE `Student_Organizations`
  ADD PRIMARY KEY (`organization_id`);

--
-- Chỉ mục cho bảng `Teaching_Assistants`
--
ALTER TABLE `Teaching_Assistants`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `supervisor_id` (`supervisor_id`);

--
-- Chỉ mục cho bảng `Tuition_Fees`
--
ALTER TABLE `Tuition_Fees`
  ADD PRIMARY KEY (`tuition_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Assignments`
--
ALTER TABLE `Assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Athletic_Teams`
--
ALTER TABLE `Athletic_Teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Buildings`
--
ALTER TABLE `Buildings`
  MODIFY `building_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Clubs`
--
ALTER TABLE `Clubs`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Courses`
--
ALTER TABLE `Courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Departments`
--
ALTER TABLE `Departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Digital_Resources`
--
ALTER TABLE `Digital_Resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Enrollments`
--
ALTER TABLE `Enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Exams`
--
ALTER TABLE `Exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Facilities`
--
ALTER TABLE `Facilities`
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Faculties`
--
ALTER TABLE `Faculties`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Financial_Transactions`
--
ALTER TABLE `Financial_Transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Grades`
--
ALTER TABLE `Grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Grants`
--
ALTER TABLE `Grants`
  MODIFY `grant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Journals`
--
ALTER TABLE `Journals`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Library_Books`
--
ALTER TABLE `Library_Books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Projects`
--
ALTER TABLE `Projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Publications`
--
ALTER TABLE `Publications`
  MODIFY `publication_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Quizzes`
--
ALTER TABLE `Quizzes`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Research_Projects`
--
ALTER TABLE `Research_Projects`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Resources`
--
ALTER TABLE `Resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Scholarships`
--
ALTER TABLE `Scholarships`
  MODIFY `scholarship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Students`
--
ALTER TABLE `Students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Student_Organizations`
--
ALTER TABLE `Student_Organizations`
  MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Tuition_Fees`
--
ALTER TABLE `Tuition_Fees`
  MODIFY `tuition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `Assignments`
--
ALTER TABLE `Assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Các ràng buộc cho bảng `Courses`
--
ALTER TABLE `Courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`);

--
-- Các ràng buộc cho bảng `Departments`
--
ALTER TABLE `Departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `Buildings` (`building_id`);

--
-- Các ràng buộc cho bảng `Enrollments`
--
ALTER TABLE `Enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Các ràng buộc cho bảng `Exams`
--
ALTER TABLE `Exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Các ràng buộc cho bảng `Faculties`
--
ALTER TABLE `Faculties`
  ADD CONSTRAINT `faculties_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`);

--
-- Các ràng buộc cho bảng `Grades`
--
ALTER TABLE `Grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`enrollment_id`) REFERENCES `Enrollments` (`enrollment_id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`assignment_id`) REFERENCES `Assignments` (`assignment_id`),
  ADD CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`quiz_id`) REFERENCES `Quizzes` (`quiz_id`),
  ADD CONSTRAINT `grades_ibfk_4` FOREIGN KEY (`exam_id`) REFERENCES `Exams` (`exam_id`),
  ADD CONSTRAINT `grades_ibfk_5` FOREIGN KEY (`project_id`) REFERENCES `Projects` (`project_id`);

--
-- Các ràng buộc cho bảng `Lecturers`
--
ALTER TABLE `Lecturers`
  ADD CONSTRAINT `lecturers_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `Faculties` (`faculty_id`);

--
-- Các ràng buộc cho bảng `Professors`
--
ALTER TABLE `Professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `Faculties` (`faculty_id`);

--
-- Các ràng buộc cho bảng `Projects`
--
ALTER TABLE `Projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Các ràng buộc cho bảng `Publications`
--
ALTER TABLE `Publications`
  ADD CONSTRAINT `publications_ibfk_1` FOREIGN KEY (`research_id`) REFERENCES `Research_Projects` (`research_id`);

--
-- Các ràng buộc cho bảng `Quizzes`
--
ALTER TABLE `Quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`);

--
-- Các ràng buộc cho bảng `Research_Projects`
--
ALTER TABLE `Research_Projects`
  ADD CONSTRAINT `research_projects_ibfk_1` FOREIGN KEY (`lead_faculty_id`) REFERENCES `Faculties` (`faculty_id`);

--
-- Các ràng buộc cho bảng `Scholarships`
--
ALTER TABLE `Scholarships`
  ADD CONSTRAINT `scholarships_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`);

--
-- Các ràng buộc cho bảng `Teaching_Assistants`
--
ALTER TABLE `Teaching_Assistants`
  ADD CONSTRAINT `teaching_assistants_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `Faculties` (`faculty_id`),
  ADD CONSTRAINT `teaching_assistants_ibfk_2` FOREIGN KEY (`supervisor_id`) REFERENCES `Professors` (`faculty_id`);

--
-- Các ràng buộc cho bảng `Tuition_Fees`
--
ALTER TABLE `Tuition_Fees`
  ADD CONSTRAINT `tuition_fees_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
