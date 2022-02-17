
CREATE TABLE specialty (
	code TINYINT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description TEXT NOT NULL
);

INSERT INTO specialty (description) VALUES ('Clínico Geral');
INSERT INTO specialty (description) VALUES ('Cardiologista');
INSERT INTO specialty (description) VALUES ('Neurologista');

CREATE TABLE status (
	code TINYINT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	description TEXT NOT NULL
);

INSERT INTO status (description) VALUES ('Executado');
INSERT INTO status (description) VALUES ('Cancelado');
INSERT INTO status (description) VALUES ('Pendente');

CREATE TABLE doctor (
	code TINYINT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	fullname TEXT NOT NULL,
	username TEXT NOT NULL,
	password TEXT NOT NULL,
	specialty TINYINT(3),
	FOREIGN KEY (specialty) REFERENCES specialty(code) 
);

CREATE TABLE patient (
	code TINYINT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	fullname TEXT NOT NULL,
	birth TEXT NOT NULL,
	address TEXT NOT NULL,
	gender TEXT NOT NULL,
	phone TEXT NOT NULL,
	email TEXT NOT NULL
);

CREATE TABLE schedule (
	code TINYINT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	date TEXT NOT NULL,
	hour TEXT NOT NULL,
	status TINYINT(3),
	specialty TINYINT(3),
	doctor  TINYINT(3),
	patient TINYINT(3),
	FOREIGN KEY (status) REFERENCES status(code),
	FOREIGN KEY (specialty) REFERENCES specialty(code),
	FOREIGN KEY (doctor) REFERENCES doctor(code),
	FOREIGN KEY (patient) REFERENCES patient(code)
);



