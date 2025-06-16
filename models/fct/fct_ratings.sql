{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

with src_ratings as (
    select * from {{ ref('src_ratings')}}
)
select 
    USER_ID,
    MOVIE_ID,
    RATING,
    RATING_TIMESTAMP
from src_ratings
where RATING is not null

{% if is_incremental()%}
    AND RATING_TIMESTAMP > (select MAX(RATING_TIMESTAMP) from {{ this }})
{% endif %}
