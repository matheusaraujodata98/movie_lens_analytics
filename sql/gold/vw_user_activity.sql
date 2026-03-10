CREATE OR REPLACE VIEW `projeto-ebac-485622.dados_gold.vw_user_activity` AS
SELECT
  userID,
  COUNT(*)       AS avaliacoes_filmes,
  MAX(tstamp)    AS ultima_avaliacao
FROM `projeto-ebac-485622.dados_silver.fact_ratings`
GROUP BY userID;
