DROP TABLE Book;
DROP TABLE Student;

CREATE TABLE Book (
	ISBN  CHAR(10)     PRIMARY KEY,
	Title VARCHAR(40) UNIQUE NOT NULL,
	Pages Integer
);

CREATE TABLE Student (
	Id     INTEGER     PRIMARY KEY,
	SSN    CHAR(9) UNIQUE NOT NULL,
	Name   VARCHAR(20) NOT NULL,
	DoB DATE,
	Gender CHAR(1) CHECK(Gender='F' OR Gender='M'),
	Major  CHAR(3),
	Credits INTEGER
);


INSERT INTO Book (ISBN,Title,Pages) 
	VALUES ('0201700735','The C++ Programming Language',1030);
	
INSERT INTO Student(Id,SSN,Name,DoB,Gender,Major,Credits)
	VALUES(1,'123456789','Orlando','01-JUN-1970','M','CS',20);
	
INSERT INTO Student(Id,SSN,Name,DoB,Gender,Major,Credits)
	VALUES(2,'123454321','Orlando','01-JUN-1970','M','BW',20);
		
DELETE FROM Student
WHERE Gender='M'
;

UPDATE Student
SET Credits=Credits+5, Major='BWT'
WHERE Major='BW'
;

DROP TABLE Person;

CREATE TABLE Person (
	Id     INTEGER     PRIMARY KEY,
	Name   VARCHAR(20) NOT NULL,
	Age INTEGER,
	Gender CHAR(1) CHECK(Gender='F' OR Gender='M'),
	Country CHAR(2)
);



INSERT INTO Person(Id, Name, Age,Gender,Country) 
	VALUES(1,'Orlando',35,'M','us');
INSERT INTO Person(Id, Name, Age,Gender,Country) 
	VALUES(2,'Lina',25,'F','mx');
INSERT INTO Person(Id, Name, Age,Gender,Country) 
	VALUES(3,'Jose',45,'M','us');
INSERT INTO Person(Id, Name, Age,Gender,Country) 
	VALUES(4,'Krishnapriya',27,'F','in');

	
	

	