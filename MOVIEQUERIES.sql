use movie;

# Q1.	Write a query in SQL to find the name and year of the movies.
select mov_title, mov_year
from movie;


#Q2.	Write a query in SQL to find the year when the movie American Beauty released
select mov_year
from movie
where mov_title = "American Beauty";

#Q3.	Write a query in SQL to find the movie which was released in the year 1999
select mov_title
from movie
where mov_year = 1999;


#Q4.	Write a query in SQL to find the movies which was released before 1998
select mov_title
from movie
where mov_year < 1998;


#Q5.	Write a query in SQL to find the movie which was released in the year 1999
select mov_title
from movie
where mov_year = 1999;


#Q6.	Write a query in SQL to return the name of all reviewers and name of movies together in a single list
select * 
from reviewer, movie;


#Q7.	Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
select rev_name
from rating, reviewer
where rev_stars >= 7;	


#Q8.	Write a query in SQL to find the titles of all movies that have no ratings.
select mov_title
from movie
where mov_title = null;


#Q9.	Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value

select rev_name
from reviewer, rating
where num_o_ratings = null;

#Q10.	Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
select dir_fname, act_lname, mov_title
from director, movie
where mov_title = "Eyes Wide Shut";