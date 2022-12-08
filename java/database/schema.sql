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
CONSTRAINT PK_collection PRIMARY KEY (collection_id),
CONSTRAINT collection_collection_name_key UNIQUE (collection_name)
);

COMMIT TRANSACTION;

BEGIN TRANSACTION;

DROP TABLE IF EXISTS comic;

CREATE TABLE comic(
comic_id SERIAL,
comic_name varchar (50) NOT NULL UNIQUE,
author varchar (50) NOT NULL,
release_date date NOT NULL,
collection_id integer,
CONSTRAINT PK_comic PRIMARY KEY (comic_id)
    INCLUDE(comic_id),
CONSTRAINT comic_comic_name_key UNIQUE (comic_name),
CONSTRAINT comic_name UNIQUE (comic_name)
    INCLUDE(comic_name),
CONSTRAINT collection_id FOREIGN KEY (collection_id)
    REFERENCES collection (collection_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID
);

COMMIT TRANSACTION;
