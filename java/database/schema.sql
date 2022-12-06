BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id),
	CONSTRAINT users_username_key UNIQUE (username)
);

COMMIT TRANSACTION;


BEGIN TRANSACTION;

DROP TABLE IF EXISTS collection;

CREATE TABLE collection (
collection_id SERIAL,
collection_name varchar (50) NOT NULL UNIQUE,
username varchar (50) NOT NULL,
comic_name varchar (50) NOT NULL,
CONSTRAINT PK_collection PRIMARY KEY (collection_id),
CONSTRAINT collection_username_key UNIQUE (username),
CONSTRAINT FK_comic_name FOREIGN KEY (comic_name)
    REFERENCES comic (comic_name) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID,
CONSTRAINT FK_username FOREIGN KEY (username)
    REFERENCES users (username) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID
);

COMMIT TRANSACTION;

BEGIN TRANSACTION;

DROP TABLE IF EXISTS comic;

CREATE TABLE comic(
comic_id SERIAL,
comic_name varchar (50) NOT NULL UNIQUE,
author varchar (50) NOT NULL,
release_date date NOT NULL,
CONSTRAINT PK_comic PRIMARY KEY (comic_id)
    INCLUDE(comic_id),
CONSTRAINT comic_name UNIQUE (comic_name)
    INCLUDE(comic_name)
);

COMMIT TRANSACTION;
