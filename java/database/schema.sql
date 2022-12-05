BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

COMMIT TRANSACTION;


BEGIN TRANSACTION;

DROP TABLE IF EXISTS collection;

CREATE TABLE collection (
collection id SERIAL,
collection_name varchar (50) NOT NULL UNIQUE,
username varchar (50) NOT NULL,
comic_name (varchar) (50) NOT NULL
);

COMMIT TRANSACTION;

BEGIN TRANSACTION;

DROP TABLE IF EXISTS comic;

CREATE TABLE comic(
comic id SERIAL,
comic_name varchar (50) NOT NULL UNIQUE,
author varchar (50) NOT NULL,
release_date date NOT NULL
);

COMMIT TRANSACTION;
