SELECT NAME 
FROM PERSON
WHERE PID IN (SELECT ACTOR 
FROM MOVIE_ACTOR_LIST
WHERE MID = (SELECT MID FROM MOVIE WHERE NAME='The Da Vinci Code')) ORDER BY NAME;
