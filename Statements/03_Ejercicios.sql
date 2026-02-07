-- 1. Obtener el título y año de estreno de las películas que no fueron lanzadas en 1993, 1999, 2000 y 2017.
SELECT title, release_year FROM movies WHERE release_year NOT IN ("1993", "1999", "2000", "2017");

-- 2. Obtener las películas que no tienen año de estreno.
SELECT title FROM movies WHERE release_year IS NULL;

-- 3. Obtener las películas con estudio cinematográfico asociado.
SELECT title FROM movies WHERE studio_id IS NOT NULL;

-- 4. Obtener los actores sin fecha de nacimiento o identificador de país de nacimiento.
SELECT name FROM people WHERE birth_date IS NULL OR country_of_birth_id IS NULL;

-- 5. Obtener los actores sin fecha de nacimiento e identificador de país de nacimiento.
SELECT name FROM people WHERE birth_date IS NULL AND country_of_birth_id IS NULL;

-- 6. Obtener la cantidad total de películas almacenadas en la base de datos. Mostrar el resultado como "Total Peliculas".
SELECT COUNT(title) FROM movies;

-- 7. Calcular el promedio de recaudación de todas las películas.
SELECT AVG(total_revenue) FROM movies;

-- 8. Contar cuántas películas se estrenaron por año. Ordenar por año descendente.
SELECT COUNT(title), release_year FROM movies GROUP BY release_year ORDER BY release_year;

-- 9. Obtener las películas cuyo año de estreno está entre 1990 y 1999.
SELECT title, release_year FROM movies WHERE release_year BETWEEN 1990 AND 1999;

/*
10. Clasificar las películas según su recaudación, mostrando título, recaudación y clasificación, siguiendo estos criterios:
    - Menor a 500000000, mostrar 'Bajo rendimiento'
    - Entre 100000000 y 500000000, mostrar 'Moderado'
    - Entre 500000000 y 1000000000, mostrar "Éxito"
    - Mayor a 1000000000, mostrar "Éxito masivo"
    - Recaudación nula, mostrar "Sin datos de recaudación"
    - Ordena el resultado alfabéticamente por nombre de película.
*/
SELECT title, total_revenue,
CASE 
	WHEN total_revenue < 500000000 THEN 'Bajo rendimiento'
    WHEN total_revenue BETWEEN 100000000 AND 500000000 THEN 'Moderado'
    WHEN total_revenue BETWEEN 500000000 AND 1000000000 THEN "Éxito"
    WHEN total_revenue > 1000000000 THEN "Éxito masivo"
    WHEN total_revenue IS NULL THEN "Sin datos de recaudación"
END AS "datitos"
FROM movies ORDER BY title;


-- 11. Obtiene el nombre y fecha de nacimiento de cada actor. Muestra el resultado en una única columna llamada "Actores", con formato "Nombre actor (fecha nacimiento)". Descarta los actores sin fecha de nacimiento.
SELECT CONCAT("NOMBRE: ", name, " (", birth_date, ").") AS "Actores" FROM people WHERE birth_date IS NOT NULL;

-- 12. Obtiene el valor mínimo de recaudación (no usar los modificadores ORDER BY y LIMIT).
SELECT MIN(total_revenue) FROM movies;

-- 13. Obtiene la cantidad máxima de espectadores (no usar el modificador ORDER BY y LIMIT). 
SELECT MAX(total_viewers) FROM movies;

-- 14. Obtiene la recaudación total y cantidad total de espectadores de todas las películas. 
SELECT SUM(total_revenue), SUM(total_viewers) FROM movies WHERE total_revenue IS NOT NULL OR total_viewers IS NOT NULL

-- 15. Obtiene título y año de estreno de las películas. Si no está el año, mostrar "No especificado". Usa los alias "Película" y "Año Estreno". Ordenar por película.
SELECT CONCAT(title, " ", "(", IFNULL(release_year, "No especificado"), ").") AS " 'Película' y 'Año Estreno'" FROM movies ORDER BY title;

-- 16. Mostrar los años en que se estrenaron más de 1 película. Ordena por año de estreno ascendente. 
SELECT release_year, COUNT(*) FROM movies GROUP BY release_year HAVING COUNT(*) >= 2 ORDER BY release_year;

-- 17. Obtiene los estudios de cine que han producido películas cuya taquilla supera el promedio de recaudación.
SELECT studio_name FROM studios WHERE studio_id IN(SELECT studio_id FROM movies WHERE total_revenue > (SELECT AVG(total_revenue) FROM movies));

-- 18. Obtiene el año de nacimiento de cada director.
SELECT name, birth_date FROM people WHERE category like "director";

-- 19. Obtiene los títulos de las películas en mayúsculas y la cantidad de letras de su nombre.
SELECT UPPER(title), LENGTH(title) FROM movies;

/* 
20. Calcula la edad aproximada de cada persona utilizando funciones de fecha.
    - Tener en cuenta solo el año de nacimiento al hacer el cálculo.
    - Excluye las personas sin fecha de nacimiento.
    - Ordena por edad ascendente.
*/

SELECT name, TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS "AGE" FROM people WHERE birth_date IS NOT NULL ORDER BY AGE;