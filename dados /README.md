# 📂 Dados

Os arquivos CSV utilizados neste projeto são do dataset **MovieLens**, disponibilizado publicamente pelo [GroupLens Research](https://grouplens.org/datasets/movielens/).

## Download

Acesse: [https://grouplens.org/datasets/movielens/](https://grouplens.org/datasets/movielens/)

## Arquivos utilizados

| Arquivo | Descrição |
|---|---|
| `movies.csv` | Catálogo de filmes com título e gêneros |
| `ratings_for_additional_users.csv` | Avaliações de usuários adicionais |
| `user_rating_history.csv` | Histórico de avaliações por usuário |
| `belief_data.csv` | Dados de crenças e predições de rating |
| `movie_elicitation_set.csv` | Conjunto de filmes para elicitação |
| `user_recommendation_history.csv` | Histórico de recomendações |
| `Rhistory.csv` | Histórico adicional de ratings |

## Upload para o GCS

Após baixar os arquivos, faça o upload para o Google Cloud Storage:

```bash
gsutil cp *.csv gs://projeto_dados_movielens/bronze/
```

> ⚠️ Os CSVs não estão versionados neste repositório pois os dados já estão armazenados no Google Cloud Storage (GCS), que é a camada Bronze do pipeline.
