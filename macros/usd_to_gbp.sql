{% macro usd_to_gbp(column_name) -%}
({{ column_name }} * 0.8)::numeric(18,2)
{%- endmacro %}