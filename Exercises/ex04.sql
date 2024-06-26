/*
En la tabla gobierno_paro, filtrar por el mes de ‘Enero de 2018’ y el paro de hombres y mujeres de entre 25 y 45 años entre 1100 y 20 y ordenar los municipios con esos filtros de mayor paro resgistrado (del total)a menor. Por último, añadir una nueva columna llamada ‘Comparación de paro’, agrupando el número total de parados en: mucho si es mayor que 1000, medio si es mayor que 500 y poco si es por debajo o igual a 500. 
 */

SELECT *,
CASE
	when total_paro_registrado >1000 then "Mucho"
    when total_paro_registrado >500 then "Medio"
    When total_paro_registrado <=500 then "Poco"
    else "desconocido"
END as "Comparación de paro"
FROM gobierno_paro 
where 
	mes = "Enero de 2018" and
    paro_hombre_edad_25__45 BETWEEN 20 and 1100 AND
    paro_mujer_edad_25__45 BETWEEN 20 and 1100
order by total_paro_registrado 
