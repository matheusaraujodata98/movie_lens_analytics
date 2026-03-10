CREATE OR REPLACE VIEW `projeto-ebac-485622.dados_gold.vw_ratings_heatmap` AS
SELECT
  userID,
  EXTRACT(YEAR  FROM tstamp) AS ano,
  EXTRACT(MONTH FROM tstamp) AS mes,
  COUNT(*)                   AS total_avaliacoes
FROM `projeto-ebac-485622.dados_silver.fact_ratings`
GROUP BY userID, ano, mes;
