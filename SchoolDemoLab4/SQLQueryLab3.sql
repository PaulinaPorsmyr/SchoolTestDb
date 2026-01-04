
INSERT INTO SchoolEmployees (Name, Role)
VALUES
('Magnus Eriksson', 'Teacher'),
('Anna Olsson', 'Teacher'),
('Jane Doe', 'Teacher'),
('Pelle Jansson', 'Teacher'),
('Linn Ava', 'Teacher')



INSERT INTO Classes (Name, TeacherId)
VALUES 
('Class F', 6),
('Class G', 7),
('Class H', 8),
('Class I', 9),
('Class J', 10)



INSERT INTO Courses (Name)
VALUES
('Physical Education'),
('English'),
('Social Science'),
('Astronomy'),
('Biology')


INSERT INTO Students (Name, SocialSecurityNumber, Address, ClassId)
VALUES
('Erik Lundgren',       '9901011234', 'Oak Street 1',        1),
('Sara Björklund',      '9901022345', 'Birch Road 2',       2),
('Johan Persson',       '9901033456', 'Pine Avenue 3',      3),
('Anna Holm',           '9901044567', 'Maple Lane 4',      4),
('Marcus Nilsson',      '9901055678', 'Cedar Street 5',    5),
('Elin Karlsson',       '9901066789', 'Spruce Road 6',     6),
('David Andersson',     '9901077890', 'Elm Avenue 7',      7),
('Maja Svensson',       '9901088901', 'Willow Lane 8',     8),
('Lucas Johansson',     '9901099012', 'Ash Street 9',      9),
('Nora Berg',           '9901100123', 'Poplar Road 10',    10),
('Oskar Lindqvist',     '9901111234', 'Chestnut Avenue 11',11),
('Filippa Ekström',     '9901122345', 'Hazel Lane 12',     12),
('Anton Söder',         '9901133456', 'Alder Street 13',    1),
('Linnea Falk',         '9901144567', 'Rowan Road 14',      2),
('Isak Nordin',         '9901155678', 'Juniper Avenue 15',  3),
('Hilda Granström',     '9901166789', 'Fir Lane 16',        4),
('William Sten',        '9901177890', 'Sycamore Street 17', 5),
('Alma Ryberg',         '9901188901', 'Cypress Road 18',    6),
('Gustav Hellman',      '9901199012', 'Magnolia Avenue 19', 7),
('Ebba Åkesson',        '9901200123', 'Dogwood Lane 20',    8),
('Leo Nyström',         '9901211234', 'Aspen Street 21',    9),
('Alva Berg',           '9901222345', 'Linden Road 22',     10),
('Hugo Falk',           '9901233456', 'Maple Avenue 23',    11),
('Moa Ström',           '9901244567', 'Oak Lane 24',        12),
('Elias Sandberg',      '9901255678', 'Birch Street 25',    1),
('Sofie Lind',          '9901266789', 'Pine Road 26',       2),
('Victor Holm',         '9901277890', 'Cedar Avenue 27',    3),
('Isabelle Dahl',       '9901288901', 'Spruce Lane 28',     4),
('Clara Håkansson',     '9901299012', 'Elm Street 29',      5),
('Leo Sand',            '9901300123', 'Willow Road 30',     6),
('Alva Lindqvist',      '9902011234', 'Ash Avenue 31',      7),
('Wilmer Jonsson',      '9902022345', 'Poplar Lane 32',     8),
('Nora Pettersson',     '9902033456', 'Chestnut Street 33', 9),
('Anton Dahl',          '9902044567', 'Hazel Road 34',      10),
('Elin Magnusson',      '9902055678', 'Alder Avenue 35',    11),
('Hugo Lundqvist',      '9902066789', 'Juniper Street 36',  12),
('Rebecca Sundin',      '9902077890', 'Fir Road 37',        1),
('Arvid Malm',          '9902088901', 'Sycamore Avenue 38', 2),
('Moa Ståhl',           '9902099012', 'Cypress Street 39',  3),
('Felix Lindberg',      '9902100123', 'Magnolia Road 40',   4),
('Amanda Kihlberg',     '9902111234', 'Dogwood Avenue 41',  5),
('Felix Lund',          '9902122345', 'Aspen Lane 42',      6),
('Ebba Åkesson',        '9902133456', 'Linden Street 43',   7),
('Albin Holm',          '9902144567', 'Maple Road 44',      8),
('Saga Bergström',      '9902155678', 'Oak Avenue 45',       9),
('Leo Karlsson',        '9902166789', 'Birch Lane 46',      10),
('Alma Eriksson',       '9902177890', 'Pine Street 47',     11),
('Hugo Nilsson',        '9902188901', 'Cedar Road 48',      12),
('Ella Svensson',       '9902199012', 'Spruce Avenue 49',   1),
('Isak Johansson',      '9902200123', 'Elm Lane 50',        2)

DELETE FROM Teachers
WHERE ClassId IS NULL;

INSERT INTO Teachers (TeacherId, ClassId)
VALUES
(1, 12),
(2, 11),
(3, 10),
(4, 9),
(5, 8),
(6, 7),
(7, 6),
(8, 5),
(9, 4),
(10, 3)



DELETE FROM Students
WHERE ClassId IS NULL;


INSERT INTO Grades (Grade, GradeDate, StudentId, CourseId, TeacherId)
VALUES
('A', '2024-05-01', 8, 1, 1),
('B', '2024-05-02', 9, 2, 2),
('C', '2024-05-03', 10, 3, 3),
('D', '2024-05-04', 11, 4, 4),
('F', '2024-05-05', 12, 5, 5),
('A', '2024-05-06', 13, 6, 6),
('B', '2024-05-07', 14, 7, 7),
('C', '2024-05-08', 15, 8, 8),
('D', '2024-05-09', 23, 9, 9),
('F', '2024-05-10', 24, 10, 10),
('A', '2024-05-11', 25, 1, 1),
('B', '2024-05-12', 26, 2, 2),
('C', '2024-05-13', 27, 3, 3),
('D', '2024-05-14', 28, 4, 4),
('F', '2024-05-15', 29, 5, 5),
('A', '2024-05-16', 30, 6, 6),
('B', '2024-05-17', 31, 7, 7),
('C', '2024-05-18', 32, 8, 8),
('D', '2024-05-19', 33, 9, 9),
('F', '2024-05-20', 34, 10, 10),
('A', '2024-05-21', 35, 1, 1),
('B', '2024-05-22', 36, 2, 2),
('C', '2024-05-23', 37, 3, 3),
('D', '2024-05-24', 38, 4, 4),
('F', '2024-05-25', 39, 5, 5),
('A', '2024-05-26', 40, 6, 6),
('B', '2024-05-27', 41, 7, 7),
('C', '2024-05-28', 42, 8, 8),
('D', '2024-05-29', 43, 9, 9),
('F', '2024-05-30', 44, 10, 10),
('A', '2024-06-01', 45, 1, 1),
('B', '2024-06-02', 46, 2, 2),
('C', '2024-06-03', 47, 3, 3),
('D', '2024-06-04', 48, 4, 4),
('F', '2024-06-05', 49, 5, 5),
('A', '2024-06-06', 50, 6, 6),
('B', '2024-06-07', 51, 7, 7),
('C', '2024-06-08', 52, 8, 8),
('D', '2024-06-09', 53, 9, 9),
('F', '2024-06-10', 54, 10, 10),
('A', '2024-06-11', 55, 1, 1),
('B', '2024-06-12', 56, 2, 2),
('C', '2024-06-13', 57, 3, 3),
('D', '2024-06-14', 58, 4, 4),
('F', '2024-06-15', 59, 5, 5),
('A', '2024-06-16', 60, 6, 6),
('B', '2024-06-17', 61, 7, 7),
('C', '2024-06-18', 62, 8, 8),
('D', '2024-06-19', 63, 9, 9),
('F', '2024-06-20', 64, 10, 10),
('A', '2024-06-21', 65, 1, 1),
('B', '2024-06-22', 66, 2, 2),
('C', '2024-06-23', 67, 3, 3),
('D', '2024-06-24', 68, 4, 4),
('F', '2024-06-25', 69, 5, 5),
('A', '2024-06-26', 70, 6, 6),
('B', '2024-06-27', 71, 7, 7),
('C', '2024-06-28', 72, 8, 8);


-- Fetch all grades from last month
-- Senaste datumet då betyg sattes var 2024-06-28
    
  SELECT 
  s.Name AS StudentName,
  c.Name AS CourseName,
  g.Grade,
  g.GradeDate
    FROM Grades g
    JOIN Students s ON g.StudentId = s.StudentId
    JOIN Courses c ON g.CourseId = c.CourseId
    WHERE g.GradeDate >= '2024-06-01' 
    AND g.GradeDate <= '2024-06-30'
    ORDER BY g.GradeDate DESC;



-- Fetch all courses and the highest and lowest grade for each course.
-- Omvandlar A-F till 6-1

    SELECT
        c.Name AS CourseName,
        MAX(GradeValue) AS HighestGrade,
        MIN(GradeValue) AS LowestGrade
    FROM Courses c
    LEFT JOIN (
    SELECT *,
        CASE Grade
            WHEN 'A' THEN 6
            WHEN 'B' THEN 5
            WHEN 'C' THEN 4
            WHEN 'D' THEN 3
            WHEN 'E' THEN 2
            WHEN 'F' THEN 1
        END AS GradeValue
        FROM Grades) 
        g ON c.CourseId = g.CourseId
    GROUP BY c.Name
    ORDER BY c.Name;

