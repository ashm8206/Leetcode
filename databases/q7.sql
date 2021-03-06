CREATE VIEW RATING_VIEW AS
SELECT MOVIE, AVG(RATING) AS RATING
FROM REVIEWS 
GROUP BY MOVIE;

CREATE VIEW FILTERED_RATING_VIEW AS
SELECT M.NAME AS MNAME, M.YEAR, V.RATING
FROM MOVIE M, RATING_VIEW V
WHERE M.MID = V.MOVIE
AND M.YEAR >= 2005;

SELECT * FROM FILTERED_RATING_VIEW V
WHERE RATING = (SELECT MAX(RATING) FROM FILTERED_RATING_VIEW V2 GROUP BY YEAR HAVING V.YEAR=V2.YEAR)
ORDER BY YEAR, MNAME;