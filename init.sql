CREATE TABLE age_table (
    name VARCHAR(10) CHECK (LENGTH(name) BETWEEN 4 AND 10),
    surname VARCHAR,
    city VARCHAR,
    age INT CHECK (age > 0 AND age <= 150)
);

INSERT INTO age_table (name, surname, city, age) VALUES
('John', 'Doe', 'New York', 28),
('Jane', 'Doe', 'Los Angeles', 34),
('Mike', 'Smith', 'Chicago', 22),
('Lucy', 'Brown', 'Houston', 45),
('Chris', 'Williams', 'Phoenix', 35),
('Nina', 'Taylor', 'Philadelphia', 29),
('Paul', 'Lee', 'San Antonio', 50),
('Anne', 'King', 'San Diego', 38),
('Alex', 'Martin', 'Dallas', 31),
('Gina', 'Clark', 'San Jose', 27),
('Ella', 'Allen', 'Austin', 41),
('Evan', 'Young', 'Jacksonville', 33),
('Leah', 'Harris', 'Fort Worth', 54),
('Liam', 'Scott', 'Columbus', 19),
('Owen', 'Morris', 'Charlotte', 24),
('Emma', 'Turner', 'Seattle', 23),
('Zara', 'Walker', 'Denver', 20),
('Adam', 'Hall', 'El Paso', 37),
('Noah', 'Lewis', 'Washington', 46),
('Alisa', 'Robinson', 'Boston', 30);