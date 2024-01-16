DROP TABLE IF EXISTS REGISTRATION;
CREATE TABLE REGISTRATION (
                              registration_id INT AUTO_INCREMENT PRIMARY KEY,
                              student_id INT,
                              offering_id INT,
                              registration_date DATE,
                              grade VARCHAR(1),
                              CHECK (grade IN ('A', 'B', 'C', 'D', 'E','F')),
                              class_rating INT,
                              CHECK (class_rating <=5)

);



INSERT INTO REGISTRATION (student_id, offering_id, registration_date, grade, class_rating)
VALUES
    (1, 101, '2023-01-15', 'A', 4),
    (2, 102, '2023-01-16', 'B', 3),
    (3, 103, '2023-01-17', 'C', 5),
    (4, 104, '2023-01-18', 'A', 2),
    (5, 105, '2023-01-19', 'B', 4),
    (6, 106, '2023-01-20', 'C', 3),
    (7, 107, '2023-01-21', 'A', 5),
    (8, 108, '2023-01-22', 'B', 2),
    (9, 109, '2023-01-23', 'C', 4),
    (10, 110, '2023-01-24', 'A', 3);
