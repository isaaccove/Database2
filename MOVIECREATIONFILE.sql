use movie;
create table actor (
act_id		integer		NOT NULL,
act_fname	char(20)	NOT NULL,
act_lname	char(20)	NOT NULL,
act_gender	char(1)		NOT NULL,
CONSTRAINT	actor_PK		PRIMARY KEY(act_id));



create table reviewer (
rev_id		integer		NOT NULL,
rev_name	char(20)	NOT NULL,
CONSTRAINT	reviewer_PK		PRIMARY KEY(rev_id));



create table genres (
gen_id		integer		NOT NULL,
gen_title	char(20)	NOT NULL,
CONSTRAINT	genres_PK	PRIMARY KEY(gen_id));

create table director (
dir_id		integer		NOT NULL,
dir_fname	char(20)	NOT NULL,
act_lname	char(20)	NOT NULL,
CONSTRAINT	director_PK		PRIMARY KEY(dir_id));


create table movie (
mov_id		integer		NOT NULL,
mov_title	char(50)	NOT NULL,
mov_year	integer		NOT NULL,
mov_time	integer		NOT NULL,
mov_lang	char(50)	NOT NULL,
mov_dt_rel	date		NULL,
mov_rel_country	char(5)	NOT NULL,
CONSTRAINT	movie_PK		PRIMARY KEY(mov_id));


create table movie_cast (
act_id		integer		NOT NULL,
mov_id		integer		NOT NULL,
mov_role	char(30)	NOT NULL,

constraint  movie_cast_pk	primary key(act_id, mov_id),
CONSTRAINT	movie_cast_fk1	FOREIGN KEY(act_id)
							REFERENCES actor(act_id),
CONSTRAINT	movie_cast_fk2	FOREIGN KEY(mov_id)
							REFERENCES movie(mov_id));




create table movie_direction (
dir_id		integer		NOT NULL,
mov_id		integer		NOT NULL,

constraint movie_direction_pk   primary key(dir_id, mov_id),

CONSTRAINT	movie_direction_fk1	FOREIGN KEY(dir_id)
								REFERENCES director(dir_id),
CONSTRAINT	movie_direction_fk2	FOREIGN KEY(mov_id)
							REFERENCES movie(mov_id));




create table movie_genres (
mov_id		integer		NOT NULL,
gen_id		integer		NOT NULL,

constraint	movie_genres_pk primary key(mov_id, gen_id),

CONSTRAINT	movie_genres_fk	FOREIGN KEY(mov_id)
							REFERENCES movie(mov_id),
CONSTRAINT	movie_cast_fk	FOREIGN KEY(gen_id)
							REFERENCES genres(gen_id));


create table rating (
mov_id			integer		NOT NULL,
rev_id			integer		NOT NULL,
rev_stars		integer		 NULL,
num_o_ratings	integer	 	 NULL,

constraint rating_pk    primary key(mov_id, rev_id),

CONSTRAINT	rating_fk1	FOREIGN KEY(mov_id)
						REFERENCES movie(mov_id),
CONSTRAINT	rating_fk2	FOREIGN KEY(rev_id)
							REFERENCES reviewer(rev_id));
                            
                            
                            
                            

