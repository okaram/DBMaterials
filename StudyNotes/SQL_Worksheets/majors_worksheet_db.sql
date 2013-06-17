DROP TABLE Majors;
DROP TABLE Minors;
DROP TABLE Area;
DROP TABLE School;
DROP TABLE Student;

CREATE TABLE School (
	Id 		INTEGER PRIMARY KEY,
	Name 	VARCHAR(45) UNIQUE NOT NULL
);

CREATE TABLE Area (
	Id 		INTEGER PRIMARY KEY,
	Name 	VARCHAR(25) UNIQUE NOT NULL,
	School 	INTEGER NOT NULL 
		REFERENCES School(id)
);

CREATE TABLE Student (
	Id 		INTEGER PRIMARY KEY,
	Name 	VARCHAR(30) NOT NULL,
	Age 	INTEGER NOT NULL, 
	Gender 	CHAR(1) NOT NULL 
		CHECK(Gender IN ('M','F'))
);

CREATE TABLE Majors (
	Student INTEGER 
		REFERENCES Student(Id),
	Area 	INTEGER REFERENCES Area(Id),
	PRIMARY KEY(Student,Area)
);

CREATE TABLE Minors (
	Student INTEGER 
		REFERENCES Student(Id),
	Area 	INTEGER REFERENCES Area(Id),
	PRIMARY KEY(Student,Area)
);
	  	
INSERT INTO School (Id, Name) VALUES (1, 'Computing and Software Engineering');
INSERT INTO School (Id, Name) VALUES (2, 'Basket Weaving and Juggling');


INSERT INTO Area (Id,Name,School) VALUES
	(1,'Computer Science',1);
INSERT INTO Area (Id,Name,School) VALUES
	(2,'Software Engineering',1);
INSERT INTO Area (Id,Name,School) VALUES
	(3,'Information Technology',1);

INSERT INTO Area (Id,Name,School) VALUES
	(4,'Basket Weaving',2);
INSERT INTO Area (Id,Name,School) VALUES
	(5,'Juggling',2);
	
INSERT INTO Student(Id, Name, Age, Gender) VALUES
	(1, 'Orlando Karam',30, 'M');
INSERT INTO Student(Id, Name, Age, Gender) VALUES
	(2, 'Lina Colli',29, 'F');
INSERT INTO Student(Id, Name, Age, Gender) VALUES
	(3, 'John Smith',18, 'M');
INSERT INTO Student(Id, Name, Age, Gender) VALUES
	(4, 'Jane Smith',19, 'F');
INSERT INTO Student(Id, Name, Age, Gender) VALUES
	(5, 'Ruben Rada',20, 'M');
INSERT INTO Student(Id, Name, Age, Gender) VALUES
	(6, 'Manuel Morales',21, 'M');

INSERT INTO Majors (Student,Area) VALUES (1,4);
INSERT INTO Majors (Student,Area) VALUES (2,1);
INSERT INTO Majors (Student,Area) VALUES (3,2);
INSERT INTO Majors (Student,Area) VALUES (4,3);
INSERT INTO Majors (Student,Area) VALUES (4,4);

INSERT INTO Minors (Student,Area) VALUES (1,5);
INSERT INTO Minors (Student,Area) VALUES (2,1);
INSERT INTO Minors (Student,Area) VALUES (2,4);
INSERT INTO Minors (Student,Area) VALUES (3,5);
INSERT INTO Minors (Student,Area) VALUES (4,5);

