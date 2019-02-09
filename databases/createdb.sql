create table MOVIE (
    MID varchar2(5) not null constraint movie_pk primary key,
    NAME varchar2(50),
    YEAR number,
    DIRECTOR varchar2(50),
    LANGUAGE varchar2(20),
    COST number,
    COUNTRY varchar2(25)
);
/

create table MOVIE_ACTOR_LIST (
    MID varchar2(5),
    ACTOR varchar2(5),
    FOREIGN KEY (MID) REFERENCES MOVIE(MID) ON DELETE CASCADE
);
/

create table MOVIE_GENRE_LIST (
    MID varchar2(5),
    GENRE varchar2(15),
    FOREIGN KEY (MID) REFERENCES MOVIE(MID) ON DELETE CASCADE
);
/

INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M1', 'Scarface', 1988, 'P1');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M2', 'Scent of a women', 1995, 'P2');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M3', 'My big fat greek wedding', 2000, 'P4');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M4', 'The Devil''s Advocate', 1997, 'P1');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M5', 'Mr. and Mrs Smith', 1965, 'P1');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M6', 'Now You see me', 2013, 'P2');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M7', 'Barely Lethal', 2014, 'P4');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M8', 'The Man with one red shoe', 1984, 'P1');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M9', 'Polar Express', 2010, 'P2');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M10', 'Her', 2013, 'P2');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M11', 'Lucy', 2015, 'P4');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M12', 'The Da Vinci Code', 2005, 'P4');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M13', 'The God Father part II', 1975, 'P1');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M15', 'Angels and Daemons', 2009, 'P2');
INSERT INTO MOVIE(MID, NAME, YEAR, DIRECTOR) VALUES('M16', 'The Island', 2010, 'P4');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M1', 'P5');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M1', 'P6');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M2', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M2', 'P6');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M3', 'P9');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M3', 'P7');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M4', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M4', 'P6');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M4', 'P8');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M5', 'P7');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M5', 'P8');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M5', 'P5');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M6', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M6', 'P6');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M6', 'P7');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M7', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M7', 'P10');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M8', 'P9');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M8', 'P10');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M9', 'P9');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M9', 'P17');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M9', 'P19');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M10', 'P3');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M10', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M10', 'P6');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M11', 'P3');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M11', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M11', 'P8');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M11', 'P9');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M12', 'P9');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M12', 'P10');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M12', 'P3');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M13', 'P5');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M13', 'P6');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M13', 'P16');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M15', 'P12');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M15', 'P18');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M15', 'P9');

INSERT INTO MOVIE_ACTOR_LIST VALUES('M16', 'P10');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M16', 'P15');
INSERT INTO MOVIE_ACTOR_LIST VALUES('M16', 'P16');

INSERT INTO MOVIE_GENRE_LIST VALUES('M1', 'Action');



INSERT INTO MOVIE_GENRE_LIST VALUES('M2', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M2', 'Comedy');
INSERT INTO MOVIE_GENRE_LIST VALUES('M3', 'Comedy');
INSERT INTO MOVIE_GENRE_LIST VALUES('M4', 'Thriller');

INSERT INTO MOVIE_GENRE_LIST VALUES('M5', 'Comedy');
INSERT INTO MOVIE_GENRE_LIST VALUES('M5', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M6', 'Thriller');
INSERT INTO MOVIE_GENRE_LIST VALUES('M7', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M8', 'Comedy');

INSERT INTO MOVIE_GENRE_LIST VALUES('M9', 'Comedy');
INSERT INTO MOVIE_GENRE_LIST VALUES('M10', 'Thriller');
INSERT INTO MOVIE_GENRE_LIST VALUES('M11', 'Thriller');
INSERT INTO MOVIE_GENRE_LIST VALUES('M12', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M12', 'Thriller');

INSERT INTO MOVIE_GENRE_LIST VALUES('M13', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M13', 'Thriller');

INSERT INTO MOVIE_GENRE_LIST VALUES('M15', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M15', 'Thriller');

INSERT INTO MOVIE_GENRE_LIST VALUES('M16', 'Action');
INSERT INTO MOVIE_GENRE_LIST VALUES('M16', 'Comedy');


create table PERSON (
    PID varchar2(5) not null constraint person_pk primary key,
    Name varchar2(50),
    Birthdate date,
    Gender varchar2(1),
    birthplace varchar2(25),
    Attribute varchar2(15),
    state varchar2(25),
    nation varchar2(25)
);
/

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P1', 'Brian de foma', TO_DATE('9/11/40', 'mm/dd/yyyy'), 'M', 'New York', 'Director');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P2', 'Martin Brest', TO_DATE('8/8/51', 'mm/dd/yyyy'), 'M', 'San Jose', 'Director');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P3', 'Scarlett Johanson', TO_DATE('11/22/84','mm/dd/yyyy'), 'F', 'Austin', 'Actor');


INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P4', 'Luc Besson', TO_DATE('5/30/75','mm/dd/yyyy'), 'F', 'Paris', 'Director');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P5', 'Morgan Freeman', TO_DATE('6/5/53','mm/dd/yyyy'), 'M', 'Canberra', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P6', 'Al Pacino', TO_DATE('11/12/26','mm/dd/yyyy'), 'M', 'Portland', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P7', 'Angelina Jolie', TO_DATE('3/3/70','mm/dd/yyyy'), 'F', 'Seattle', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P8', 'Brad Pitt', TO_DATE('4/4/75','mm/dd/yyyy'), 'M', 'London', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P9', 'Tom Hanks', TO_DATE('5/19/64','mm/dd/yyyy'), 'M', 'Perth', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P10', 'Jessica Alba', TO_DATE('8/7/83','mm/dd/yyyy'), 'F', 'Seoul', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P12', 'Alex Parish', TO_DATE('7/9/77','mm/dd/yyyy'), 'F', 'San Jose', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P13', 'Jack Nicholson', TO_DATE('11/13/58','mm/dd/yyyy'), 'M', 'Austin', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P15', 'Harrison Ford', TO_DATE('9/11/57','mm/dd/yyyy'), 'M', 'Canberra', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P16', 'Julia Roberts', TO_DATE('1/1/67','mm/dd/yyyy'), 'F', 'Portland', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P17', 'Matt Damon', TO_DATE('1/7/71','mm/dd/yyyy'), 'M', 'Seattle' 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P18', 'Jennifer Lawrence', TO_DATE('2/2/62','mm/dd/yyyy'), 'F', 'London', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P19', 'George clooney', TO_DATE('3/3/65','mm/dd/yyyy'), 'M', 'Perth', 'Actor');

INSERT INTO PERSON(PID, Name, Birthdate, Gender, birthplace, Attribute) VALUES('P20', 'Jennifer Aniston', TO_DATE('4/4/68','mm/dd/yyyy'), 'F', 'Seoul', 'Actor');


create table IMDB_USER (
    ID varchar2(5) PRIMARY KEY,
    EMAIL varchar2(80),
    FNAME varchar2(30),
    LNAME varchar2(30),
    DOB DATE,
    BIRTHPLACE varchar2(50),
    GENDER varchar2(1)
);

create table REVIEWS (
    MOVIE varchar2(5) PRIMARY KEY,
    AUTHOR varchar2(5),
    RATING number,
    VOTES number,
    PUBLISH_DATE DATE,
    FOREIGN KEY (MOVIE) REFERENCES MOVIE(MID) ON DELETE CASCADE,
    FOREIGN KEY (AUTHOR) REFERENCES IMDB_USER(ID) ON DELETE CASCADE
);






