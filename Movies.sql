CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    movie_title VARCHAR(255),
    release_date DATE,
    director VARCHAR(255),
    producer VARCHAR(255),
    budget FLOAT,
    box_office_collection FLOAT
);

CREATE TABLE Media (
    media_id INT PRIMARY KEY,
    movie_id INT,
    media_type ENUM('video', 'image'),
    media_url VARCHAR(255),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(255)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    review_text TEXT,
    review_date DATE,
    rating INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(255)
);

CREATE TABLE Skills (
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(255)
);

CREATE TABLE Roles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(255)
);
