-- CREATE SCHEMA IF NOT EXISTS academy;

CREATE TABLE table_sexes (
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE table_persons (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    birth_date DATE NOT NULL,
    sex_id INT NOT NULL,
    FOREIGN KEY (sex_id) REFERENCES table_sexes(id)
);

CREATE TABLE table_faculties (
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE table_statuses (
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE table_students (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    person_id INT NOT NULL,
    faculty_id INT NOT NULL,
    date_of_receipt DATE NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES table_persons(id),
    FOREIGN KEY (faculty_id) REFERENCES table_faculties(id),
    FOREIGN KEY (status_id) REFERENCES table_statuses(id)
);