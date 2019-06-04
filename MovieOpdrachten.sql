#vraag 1
SELECT mov_title as 'Title', mov_year as 'Year'
FROM movie;

#vraag 2
SELECT mov_year as 'Relase year'
FROM movie
WHERE mov_title like 'American Beauty';

#vraag 3
SELECT mov_title as 'Title = release 1999'
FROM movie
WHERE mov_year = 1999;

#vraag 4
SELECT mov_title as 'Title < release 1998'
FROM movie
WHERE mov_year < 1998;

#vraag 5
select concat(reviewer.rev_name,' - ',mov_title) as 'reviewer and movie name'
FROM rating r
INNER JOIN reviewer on r.rev_id = reviewer.rev_id
INNER JOIN movie on r.mov_id=movie.mov_id;

#vraag 6
SELECT distinct reviewer.rev_name
FROM rating
INNER JOIN reviewer on rating.rev_id=reviewer.rev_id
where rev_stars >=7;

#vraag 7
SELECT Movie.mov_title
FROM movie
WHERE mov_id not In(SELECT rating.mov_id from rating);

#vraag 8
SELECT mov_title
FROM movie
WHERE mov_id in(5,7,9);

#vraag 9
SELECT act_id
FROM actor
WHERE act_fname like 'woody' and act_lname like 'allen';

#vraag 10


#vraag 11
SELECT COUNT(mov_id) as 'Count not in the UK'
FROM movie
where mov_rel_country not like 'uk';

#vraag 12
SELECT mov_year as 'year'
FROM movie
where mov_id in(SELECT mov_id from rating where rev_stars >3)
group by mov_year
having count(mov_year)>1;

#vraag 13
SELECT reviewer.rev_name as 'Name Reviewer',movie.mov_title as 'Movie title',rating.rev_stars as 'Review Stars'
from rating
INNER JOIN reviewer on rating.rev_id=reviewer.rev_id
right join movie on rating.mov_id=movie.mov_id
ORDER BY reviewer.rev_name;

#vraag 14
SELECT movie.mov_title as 'Movie title',Max(rating.rev_stars) as 'Max Rating'
FROM rating
INNER JOIN movie on rating.mov_id=movie.mov_id
group by rating.mov_id
order by `Movie title`;

#vraag 15


#vraag 16
SELECT COUNT(actor.act_id)
FROM actor
WHERE actor.act_id not in(
    SELECT act_id
    from movie_cast
    INNER JOIN movie on movie_cast.mov_id=movie.mov_id
    where movie.mov_year between 1990 AND 2000
    );

#Vraag 17

#Vraag 18
SELECT movie.mov_title as 'movie',movie.mov_year as 'year', genres.gen_title as 'genres'
from movie_genres
INNER JOIN movie on movie_genres.mov_id=movie.mov_id
INNER JOIN genres on movie_genres.gen_id=genres.gen_id;

#Vraag 19
SELECT Movie.mov_title as 'title',
       movie.mov_year as 'year',
       movie.mov_dt_rel as 'release date',
       movie.mov_time as 'duration',
       director.dir_fname as'director first name',
       director.dir_lname as 'director last name'
from movie_direction
INNER JOIN director on movie_direction.dir_id=director.dir_id
INNER JOIN movie on movie_direction.mov_id=movie.mov_id
where movie.mov_year < '1989-01-01'
order by movie.mov_dt_rel DESC;

#Vraag 20
SELECT movie.mov_year
from rating
INNER JOIN movie on rating.mov_id=movie.mov_id
where rating.rev_stars =3 or rating.rev_stars=4
order by movie.mov_dt_rel DESC;




