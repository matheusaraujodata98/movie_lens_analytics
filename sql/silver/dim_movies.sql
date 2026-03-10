CREATE OR REPLACE TABLE `projeto-ebac-485622.dados_silver.dim_movies` AS
SELECT
  movieId,
  title,
  genres,
  REGEXP_EXTRACT(title, '\\((\\d{4})\\)') AS ano_lancamento
FROM `projeto-ebac-485622.dados_brutos.movies`
WHERE title != 'title';
