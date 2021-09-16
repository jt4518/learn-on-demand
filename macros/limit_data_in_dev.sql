{%- macro limit_data_in_dev(column_name, unit_of_time='day', unit_of_time_number=30) -%}
{%- if target.name == 'dev' -%}
where {{ column_name }} >= dateadd({{unit_of_time}}, - {{ unit_of_time_number }}, current_timestamp)
{%- endif -%}
{%- endmacro -%}