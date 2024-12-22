CREATE TABLE gold_allviews
WITH (
    format = 'PARQUET',
    parquet_compression = 'SNAPPY',
    external_location = 's3://suncica-wikidata/datalake/gold_allviews/'
) AS
SELECT
    article,
    SUM(views) AS total_top_view,
    MIN(rank) AS top_rank,
    COUNT(DISTINCT date) AS ranked_days
FROM
    silver_views
GROUP BY
    article;
