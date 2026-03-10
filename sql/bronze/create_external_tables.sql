CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.movies`
(
  movieId STRING,
  title   STRING,
  genres  STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/movies.csv']
);


CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.ratings_for_additional_users`
(
  userID STRING,
  moveID STRING,
  rating STRING,
  tstamp STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/ratings_for_additional_users.csv']
);


CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.user_rating_history`
(
  userID STRING,
  moveID STRING,
  rating STRING,
  tstamp STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/user_rating_history.csv']
);


CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.belief_data`
(
  userId  STRING,
  movieId STRING,
  rating  STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/belief_data.csv']
);


CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.movie_elicitation_set`
(
  movieId STRING,
  title   STRING,
  genres  STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/movie_elicitation_set.csv']
);


CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.user_recommendation_history`
(
  userId    STRING,
  movieId   STRING,
  rating    STRING,
  timestamp STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/user_recommendation_history.csv']
);


CREATE OR REPLACE EXTERNAL TABLE `projeto-ebac-485622.dados_brutos.Rhistory`
(
  userId    STRING,
  movieId   STRING,
  rating    STRING,
  timestamp STRING
)
OPTIONS (
  format = 'CSV',
  uris   = ['gs://projeto_dados_movielens/bronze/Rhistory.csv']
);
