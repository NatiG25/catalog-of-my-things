CREATE DATABASE catalog_of_my_things;

CREATE TABLE item(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    genre VARCHAR(50),
    author VARCHAR(50),
    label VARCHAR(50),
    publish_date DATE,
    archived BOOLEAN
);

CREATE TABLE book(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publisher VARCHAR(50),
    cover_state VARCHAR(50)
);

CREATE TABLE label(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(50)
    color VARCHAR(50)
)
