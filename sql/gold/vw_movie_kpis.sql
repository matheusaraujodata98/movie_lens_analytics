CREATE OR REPLACE VIEW `projeto-ebac-485622.dados_gold.vw_movie_kpis` AS
SELECT
  dm.movieId,
  dm.title,
  dm.genres,
  COUNT(*)       AS total_avaliacoes,
  AVG(fr.rating) AS media_rating
FROM `projeto-ebac-485622.dados_silver.dim_movies` AS dm
LEFT JOIN `projeto-ebac-485622.dados_silver.fact_ratings` AS fr
  ON SAFE_CAST(dm.movieId AS INT64) = fr.moveID
GROUP BY dm.movieId, dm.title, dm.genres;
