DROP TABLE IF EXISTS 'group_';
DROP TABLE IF EXISTS 'student_marks';
DROP TABLE IF EXISTS 'student';
CREATE TABLE group_ (
id INTEGER PRIMARY KEY,
name VARCHAR(255) NOT NULL,
description VARCHAR(255));
INSERT INTO 'group_' VALUES(1,'БВТ','2402');
INSERT INTO 'group_' VALUES(2,'БCТ','2404');
INSERT INTO 'group_' VALUES(3,'БВТ','2301');
CREATE TABLE student_marks (
student_id INTEGER PRIMARY KEY,
math_mark_average FLOAT,
physics_mark_average FLOAT,
python_mark_average FLOAT);
INSERT INTO 'student_marks' VALUES(111,2,5,4);
INSERT INTO 'student_marks' VALUES(222,4,3,5);
INSERT INTO 'student_marks' VALUES(333,5,4,5);
CREATE TABLE student (
id INTEGER REFERENCES student_marks (student_id),
name VARCHAR(255) NOT NULL,
group_id INTEGER NOT NULL REFERENCES group_ (id),
PRIMARY KEY (id, group_id));
INSERT INTO 'student' VALUES(111,'Николай',1);
INSERT INTO 'student' VALUES(222,'Василий',2);
INSERT INTO 'student' VALUES(333,'Петр',3);
