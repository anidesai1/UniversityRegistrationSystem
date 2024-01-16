DROP TABLE IF EXISTS ADDRESS;
CREATE TABLE ADDRESS (
         id INT AUTO_INCREMENT  PRIMARY KEY,
         first_line VARCHAR(255),
         town VARCHAR(255),
         postcode VARCHAR(255)
);

DROP TABLE IF EXISTS STUDENT;
CREATE TABLE STUDENT (
         id INT AUTO_INCREMENT  PRIMARY KEY,
         first_name VARCHAR(255),
         last_name VARCHAR(255),
         email VARCHAR(255),
         FOREIGN KEY (address_id) REFERENCES ADDRESS (id),
         CHECK (student_year IN ('Freshman', 'Sophomore', 'Junior', 'Senior')),
         last_registration_date DATE
);

DROP TABLE IF EXISTS INSTRUCTOR;
CREATE TABLE INSTRUCTOR (
        id INT AUTO_INCREMENT  PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255),
        phone_number VARCHAR(255)
);

DROP TABLE IF EXISTS DEPARTMENT_HEAD;
CREATE TABLE DEPARTMENT_HEAD (
         id INT AUTO_INCREMENT  PRIMARY KEY,
         name VARCHAR(255),
         email VARCHAR(255),
         phone_number VARCHAR(255)
);

DROP TABLE IF EXISTS COURSE;
CREATE TABLE COURSE (
        id INT AUTO_INCREMENT PRIMARY KEY,
        des VARCHAR(255),
        pre_reqs VARCHAR(255),
        term VARCHAR(255),
        name VARCHAR(255),
        FOREIGN KEY (department_head_id) REFERENCES DEPARTMENT_HEAD (id)
);

DROP TABLE IF EXISTS COURSE_CATALOG;
CREATE TABLE COURSE_CATALOG  (
     id INT AUTO_INCREMENT  PRIMARY KEY,
     FOREIGN KEY (course_id) references COURSE(id)
);

DROP TABLE IF EXISTS CLASS;
CREATE TABLE CLASS  (
    id INT AUTO_INCREMENT  PRIMARY KEY,
    class_day VARCHAR(250),
    class_time VARCHAR(250),
    location VARCHAR(250),
    FOREIGN KEY (course_id) references COURSE(id), FOREIGN KEY (instructor_id) references INSTRUCTOR(id),
);