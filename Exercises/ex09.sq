/*
Las 50 películas a color de USA, desde el año 2000 a 2010 con un campo nuevo llamado 
'Calificación según Facebook' donde se evidencien tres variables: si tiene menos de 5.000 likes es 
'Regular'; si tiene entre 5.000 y 10.000 likes es 'Buena' y si tiene más de 10.000 likes es 'Muy Buena'.
*/
SELECT color, title_year, country,
CASE
	when movie_facebook_likes < 5000 then "Regular"
    when movie_facebook_likes BETWEEN 5000 and 10000 then "Buena"
    when movie_facebook_likes > 10000 then "Muy Buena"
    else " BANANA"
END as "Calificación según Facebook"
FROM imdb_movies 
WHERe
	color = "Color" AND
    country = "USA" and
    title_year BETWEEN 2000 and 2010 
   
limit 50
