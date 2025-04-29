-- 1. student 테이블
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

INSERT INTO student (first_name, last_name) VALUES
('Shreya', 'Bain'),
('Rianna', 'Foster'),
('Yosef', 'Naylor');

-- 2. teacher 테이블
CREATE TABLE teacher (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

INSERT INTO teacher (first_name, last_name) VALUES
('Taylah', 'Booker'),
('Sarah-Louise', 'Blake');

-- 3. course 테이블
CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    teacher_id INTEGER NOT NULL REFERENCES teacher(id)
);

INSERT INTO course (name, teacher_id) VALUES
('Database design', 1),
('English literature', 2),
('Python programming', 1);

-- 4. student_course 테이블
CREATE TABLE student_course (
    student_id INTEGER NOT NULL REFERENCES student(id),
    course_id INTEGER NOT NULL REFERENCES course(id)
);

INSERT INTO student_course (student_id, course_id) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1);

-- -------------------------
-- 조인해서 출력하기 (INNER JOIN 예시)
SELECT 
    student.first_name || ' ' || student.last_name AS student_name,
    course.name AS course_name,
    teacher.first_name || ' ' || teacher.last_name AS teacher_name
FROM student_course
INNER JOIN student ON student_course.student_id = student.id
INNER JOIN course ON student_course.course_id = course.id
INNER JOIN teacher ON course.teacher_id = teacher.id;











