/*
En la tabla star_wars_characters, buscar el personaje que sea de un planeta que comience por la
letra T y que no termine por la letra d, que mida más de 200 y que no sea un droide. 
Pista: el caracter comodin es %. 
*/
SELECT * 
FROM star_wars_characters_2 
where homeworld like "T%" AND
	homeworld not like "%d" AND
    height > 200 AND
    species != "Droid"
limit 1
