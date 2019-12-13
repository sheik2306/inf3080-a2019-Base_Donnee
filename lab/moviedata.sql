drop table Movie;
drop table Reviewer;
drop table Rating;



create table Movie(
mID integer NOT NULL PRIMARY KEY, 
title varchar(50) NOT NULL, 
year integer NOT NULL check ( year > 1900), 
director varchar(30),


CONSTRAINT pk_couple UNIQUE (title, year),

CONSTRAINT chk_spiel CHECK ( director NOT LIKE 'Steven Spielberg' 
OR (director LIKE 'Steven Spielberg' and year < 1990)),

CONSTRAINT chk_james CHECK ( director NOT LIKE 'James Cameron' 
OR (director LIKE 'James Cameron' and year > 1990))

);/


create table Reviewer(
rID integer NOT NULL PRIMARY KEY, 
name varchar(30) NOT NULL

);/

create table Rating(
rID integer, 
mID integer, 
stars integer NOT NULL check (stars in (1,2,3,4,5)), 
ratingDate date CHECK ( ratingDate >= TO_DATE('01-01-2000','dd-mm-yyyy')),
CONSTRAINT pk_rating UNIQUE (rID,mID,ratingDate)

);/


insert into Movie values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movie values(102, 'Star Wars', 1977, 'George Lucas');
insert into Movie values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movie values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movie values(105, 'Titanic', 1997, 'James Cameron');
insert into Movie values(106, 'Snow White', 1937, null);
insert into Movie values(107, 'Avatar', 2009, 'James Cameron');
insert into Movie values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

insert into Reviewer values(201, 'Sarah Martinez');
insert into Reviewer values(202, 'Daniel Lewis');
insert into Reviewer values(203, 'Brittany Harris');
insert into Reviewer values(204, 'Mike Anderson');
insert into Reviewer values(205, 'Chris Jackson');
insert into Reviewer values(206, 'Elizabeth Thomas');
insert into Reviewer values(207, 'James Cameron');
insert into Reviewer values(208, 'Ashley White');

INSERT INTO Rating VALUES(201, 101, 2, to_date('22-01-2011', 'dd-mm-yyyy'));
insert into Rating values(201, 101, 4, to_date('27-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(202, 106, 4, NULL);
INSERT INTO Rating VALUES(203, 103, 2, to_date('20-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(203, 108, 4, to_date('12-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(203, 108, 2, to_date('30-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(204, 101, 3, to_date('09-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(205, 103, 3, to_date('27-01-2011', 'dd-mm-yyyy'));
insert into Rating values(205, 104, 2, to_date('22-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(205, 108, 4, NULL);
INSERT INTO Rating VALUES(206, 107, 3, to_date('15-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(206, 106, 5, to_date('19-01-2011', 'dd-mm-yyyy'));
INSERT INTO Rating VALUES(207, 107, 5, to_date('20-01-2011', 'dd-mm-yyyy'));
insert into Rating values(208, 104, 3, to_date('02-01-2011', 'dd-mm-yyyy'));

insert into Movie values (109, 'Titanic', 1997, 'JC');
 insert into Reviewer values (201, 'Ted Codd');
 update Rating set rID = 205, mID=104;
 insert into Reviewer values (209, null);
 update Rating set stars = null where rID = 208; 
 update Movie set year = year -40;
 update Rating set stars = stars + 1;
 insert into Rating VALUES (201, 101, 1, to_date('01-01-1999','dd-mm-yyyy'));
 insert into Movie values (109, 'Jurassic Park', 1993, 'Steven Spielberg');
 update Movie set year = year-10 where title = 'Titanic';
 
 update Movie set mID = mID +1; -- Ceci Ajoute + 1 chaque numero de la colonne mID
 insert into Movie values (109, 'Titanic', 2001, null);
 update Rating set mID = 109;
 
 
  update Movie set year = 1901 where director <> 'James Cameron';
  update Rating set stars = stars -1;


