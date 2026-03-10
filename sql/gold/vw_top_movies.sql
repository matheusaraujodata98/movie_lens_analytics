CREATE OR REPLACE VIEW `projeto-ebac-485622.dados_gold.vw_top_movies` AS
SELECT *
FROM `projeto-ebac-485622.dados_gold.vw_movie_kpis`
ORDER BY media_rating DESC
LIMIT 10;
