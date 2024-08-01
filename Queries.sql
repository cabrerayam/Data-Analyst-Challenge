
-- Completar con la consulta adecuada para obtener los 10 países con más títulos en Netflix:
SELECT
   country
  ,COUNT(DISTINCT show_id) AS cantidadDeTitulos
FROM `peya-food-and-groceries.user_yamileth_cabrera.Netflix_Titles_2024` 
WHERE show_id IS NOT NULL 
AND country IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10

-- Completar con la consulta adecuada para obtener los géneros más populares en Netflix
SELECT
   SPLIT(listed_in, ',')[OFFSET(0)] AS generoPrimario
  ,COUNT(DISTINCT show_id) AS cantidadDeTitulos
FROM `peya-food-and-groceries.user_yamileth_cabrera.Netflix_Titles_2024` 
WHERE show_id IS NOT NULL 
AND listed_in IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC

-- Completar con la consulta adecuada para obtener la cantidad de títulos lanzados por año en Netflix
SELECT
  release_year
  ,COUNT(DISTINCT show_id) AS cantidadDeTitulos
FROM `peya-food-and-groceries.user_yamileth_cabrera.Netflix_Titles_2024` 
WHERE show_id IS NOT NULL 
GROUP BY 1
ORDER BY 1
