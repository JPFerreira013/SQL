* De la tabla videogames_games, ordenar por año y mostrar el nombre del juego que 
fue publicado por Nintendo en el año 1995 en adelante,
que no se llame “Donkey Konga 2”, que vendiera entre cero y 0,32 en Europa, 
entre cero y 0,31 en America, y entre cero y 0,3 en otros territorios… */

SELECT * 
FROM videogames_games 
WHERE 
	year >= 1995 and 
    publisher = "Nintendo" and
    name != "Donkey Konga 2" AND
    na_sales <= 0.31 AND
    eu_sales <= 0.32 AND
    other_sales <= 0.32
ORDER BY year
Limit 1
