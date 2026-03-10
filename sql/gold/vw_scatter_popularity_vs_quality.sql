CREATE OR REPLACE VIEW `projeto-ebac-485622.dados_gold.vw_scatter_popularity_vs_quality` AS
SELECT
  total_avaliacoes AS popularidade,
  media_rating     AS qualidade
FROM `projeto-ebac-485622.dados_gold.vw_movie_kpis`;
