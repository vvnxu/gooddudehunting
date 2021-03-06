CREATE DATABASE gooddeedhunting

\c gooddeedhunting

CREATE TABLE requests (
	id SERIAL PRIMARY KEY,
	acceptor VARCHAR(100) NOT NULL,
	acceptor_id INTEGER NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
	acpt_pic VARCHAR(250) NOT NULL,
	acpt_story VARCHAR(500) NOT NULL,
	item VARCHAR (500) NOT NULL,
	amount INTEGER NOT NULL
);

CREATE TABLE donations (
	id SERIAL PRIMARY KEY,
	donator_id INTEGER NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
	request_id INTEGER NOT NULL REFERENCES requests(id) ON DELETE RESTRICT,
	amount INTEGER NOT NULL
);

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR (50) NOT NULL,
	email VARCHAR (100) NOT NULL,
	password_digest VARCHAR (300) NOT NULL
);

