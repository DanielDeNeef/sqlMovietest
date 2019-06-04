CREATE TABLE actor(
  act_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  act_fname char(20),
  act_lname char(20),
  act_gender char(1)
);

CREATE TABLE director(
  dir_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  dir_fname char(20),
  dir_lname char(20)
);

CREATE TABLE movie_direction(
  dir_id INTEGER,
  mov_id INTEGER
);

CREATE TABLE movie_cast(
    act_id integer,
    mov_id integer,
    role char(20)
);

CREATE TABLE movie(
    mov_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    mov_title CHAR(20),
    mov_year INTEGER,
    mov_time INTEGER,
    mov_lang CHAR(20),
    mov_dt_rel DATE,
    mov_rel_country CHAR(5)
);

CREATE TABLE reviewer(
    rev_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rev_name CHAR(30)
);

CREATE TABLE genres(
    gen_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    gen_title CHAR(20)
);

CREATE TABLE movie_genres(
  mov_id INTEGER,
  gen_id INTEGER
);

CREATE TABLE rating(
  mov_id INTEGER,
  rev_id INTEGER,
  rev_stars INTEGER,
  num_o_ratings INTEGER
);

SHOW TABLES;

DESCRIBE actor;
DESCRIBE director;
DESCRIBE movie_direction;
DESCRIBE movie_cast;
DESCRIBE movie;
DESCRIBE reviewer;
DESCRIBE genres;
DESCRIBE movie_genres;
DESCRIBE rating;
