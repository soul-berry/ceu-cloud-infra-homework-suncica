CREATE EXTERNAL TABLE bronze_views (
    article STRING,
    views INT,
    rank INT,
    date DATE,
    retrieved_at TIMESTAMP
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://suncica-wikidata/datalake/views/'
TBLPROPERTIES ('has_encrypted_data'='false');
