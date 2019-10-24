use artist_db;

select * from Artist;
select * from Album;
delete from Album where ArtistId = 6;

CREATE TABLE Artist(
ArtistId	Integer		NOT NULL,
ArtistName	Char(25)	NOT NULL,
Rating		Char(10)	NOT NULL,
Phone		Numeric(12)	NULL,
CONSTRAINT	Artist_PK	PRIMARY KEY(ArtistId));
	
ALTER TABLE Album
ADD Album_Id Integer NOT NULL,
ADD CONSTRAINT Album_PK PRIMARY KEY(Album_Id, YearRelease);



CREATE TABLE Album(
ArtistId	Integer		NOT NULL,
Track		Char(15)	NOT NULL,
Genre		Char(15)	NOT NULL,
YearRelease	Integer		NOT NULL,
    CONSTRAINT	Album_PK	PRIMARY KEY(Track, YearRelease),
    CONSTRAINT Album_FK FOREIGN KEY(ArtistId)
							REFERENCES	Artist(ArtistId));
	select * from Album;
update Album set ArtistId = 02 where Track = "Crown";
                            
insert into Album values(06, 'Bajinatu', 'HipHop', 2017);                           
insert into Artist values(07, 'Tope Alabi', 'High', 067654654654); 

#Isaac Cove
#Olowofila
SELECT ArtistName, Track, YearRelease, Phone
FROM Artist INNER JOIN Album
ON Artist.ArtistId = Album.ArtistId



