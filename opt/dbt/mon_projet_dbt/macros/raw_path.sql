{% macro raw_path(table_name) %}
    parquet.`s3a://raw-data/informix/{{ table_name }}/`
{% endmacro %}
