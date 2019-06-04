INSERT INTO movie(mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUE ('Terminator',1984,108,'eng','1984-10-26','USA'),
    ('American Beauty',1999,122,'Eng','1999-09-08','USA'),
    ('Matrix',1999,136,'ENG','1999-03-31','USA'),
    ('Bananas',1971,82,'ENG','1971-04-28','USA'),
    ('Eyes Wide Shut',1999,165,'Eng','1999-07-16','USA'),
    ('The Full Monty',1997,155,'ENG','1997-08-13','UK'),
    ('Annie Hall',1977,153,'ENG','1977-04-20','USA'),
    ('Iron Man',2008,126,'ENG','2008-04-30','USA'),
    ('Lord of the Rings',2001,251,'ENG','2001-12-19','USA'),
    ('Batman Begins',2005,140,'ENG','2005-06-05','USA');

INSERT INTO reviewer(rev_name)
VALUE ('Rotten Tomato'),
    ('Bob The reviewer'),
    ('SamyRev');

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUE (1,1,7,7),
    (2,1,5,5),
    (1,3,8,8),
    (10,3,8,8);

INSERT INTO actor(act_fname, act_lname, act_gender)
VALUE ('Kevin','Spacey','m'),
    ('Annette','Bening','w'),
    ('Arnorld','Schwarzenegger','m'),
    ('Linda','Hamilton','w'),
    ('Michael','Biehn','m'),
    ('Keanu','reeves','m'),
    ('laurence','fishburne','w'),
    ('carrie-anne','moss','w'),
    ('Woody','Allen','m'),
    ('louise', 'Lasser', 'w');

INSERT INTO director(dir_fname, dir_lname)
VALUE ('woody','allen'),
    ('James','Cameron');

INSERT INTO movie_cast(act_id, mov_id, role)
VALUE (3,1,'star'),
    (4,1,'Star'),
    (5,1,'Star'),
    (9,4,'star'),
    (10,4,'Star');

INSERT INTO movie_direction(dir_id, mov_id)
VALUE (1,4),
    (2,1);

INSERT INTO genres(gen_title)
value ('Horror'),('Fantasy'),('SiFy'),('Comerdy'),('Romance');

INSERT INTO movie_genres(mov_id, gen_id)
VALUE (1,3),(2,5),(4,4);