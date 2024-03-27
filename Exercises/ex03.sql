/* 
De la tabla fortune, queremos ver sólo las 100 primeras compañías según el rango, sin incluir a Citigroup, 
viendo sólo las compañías dentro del sector financiero; industria diversified financials y crearemos un 
nuevo campo de rentabilidad en el que divida a las compañías entre rentables y no rentables si sus 
beneficios son mayores o menores a 1000. 
*/

 SELECT *,
 CASE
 	when  profits > 1000 then "rentables"
    When profits < 1000 Then "no rentables"
    Else "Desconocido"
END "rentabilidad"
 FROM fortune
 Where 
 	sector = "Financials" AND
 	industry = "Diversified Financials"
