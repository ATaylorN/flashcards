BEGIN TRANSACTION;

--ROLLBACK

DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE questions (
	question_id serial,
	question varchar(500) NOT NULL,
	answer varchar (2000) NOT NULL
);


COMMIT TRANSACTION;
