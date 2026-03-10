CREATE OR REPLACE TABLE `projeto-ebac-485622.dados_silver.fact_ratings` AS
SELECT
  SAFE_CAST(userID AS INT64)     AS userID,
  SAFE_CAST(moveID AS INT64)     AS moveID,
  SAFE_CAST(rating AS FLOAT64)   AS rating,
  SAFE_CAST(tstamp AS TIMESTAMP) AS tstamp
FROM `projeto-ebac-485622.dados_brutos.ratings_for_additional_users`
WHERE rating != 'rating'

UNION ALL

SELECT
  SAFE_CAST(userID AS INT64)     AS userID,
  SAFE_CAST(moveID AS INT64)     AS moveID,
  SAFE_CAST(rating AS FLOAT64)   AS rating,
  SAFE_CAST(tstamp AS TIMESTAMP) AS tstamp
FROM `projeto-ebac-485622.dados_brutos.user_rating_history`
WHERE rating != 'rating';
