/*
Tabla: star_wars_characters. Nombre de los personajes de Star Wars que tengan los ojos distintos a rojo y 
que sean de los mundos Chandrila, Stewjon o Tatooine. 
Añadir un nuevo campo “tamaño” que nos diga si es “grande” cuando la altura  sea mayor o igual a 200 y 
“pequeño” si es menor de 200. Por último ordenar por altura de menor a mayor.
*/

SELECT *,
Case 
	when height > 200 then "grande"
    when height < 200 then "pequeno"
    else "Desconocido"
END "tamaño"
FROM star_wars_characters_2 
WHERE
eye_color <> "rojo" AND
homeworld in ("Chandrila", "Stewjon", "Tatooine")
Order By height
