-- Table: movies
CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  release_year INTEGER NOT NULL,
  genre VARCHAR(50) NOT NULL
  
);

-- Table: theaters
CREATE TABLE theaters (
  theater_id SERIAL PRIMARY KEY,
  NAME VARCHAR(100) NOT NULL,
  location VARCHAR(100) NOT NULL
);

-- Table: showtimes
CREATE TABLE showtimes (
  showtime_id SERIAL PRIMARY KEY,
  movie_id INTEGER NOT NULL,
  theater_id INTEGER NOT NULL,
  showtime TIMESTAMP NOT NULL
);

-- Table: tickets
`tickets`
-- Table: customers
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);




INSERT INTO movies (title, release_year, genre, movie_id)
VALUES ('Avengers: Endgame', 2019, 'Action', 2);



SELECT m.title, t.name AS theater_name, s.showtime
FROM movies m
JOIN showtimes s ON m.movie_id = s.movie_id
JOIN theaters t ON t.theater_id = s.theater_id;





