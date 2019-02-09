CREATE VIEW LOWEST_RATED_MOVIE AS
SELECT MOVIE, COUNT(RATING) AS NUM_RATING, AVG(RATING) AS RATING
FROM REVIEWS
GROUP BY MOVIE
HAVING AVG(RATING) = (SELECT MIN(AVG(RATING)) FROM REVIEWS GROUP BY MOVIE) 
AND 
COUNT(RATING) = (SELECT MAX(COUNT(RATING)) FROM REVIEWS GROUP BY MOVIE);

SELECT M.MID, M.NAME, M.YEAR, V.RATING, V.NUM_RATING
FROM MOVIE M, LOWEST_RATED_MOVIE V
WHERE M.MID = V.MOVIE;