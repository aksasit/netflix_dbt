with raw_ratings as (
    select * from {{ source('raw_data', 'r_ratings')}}
)

select 
    USER_ID,
    MOVIE_ID,
    RATING,
    to_timestamp_ltz(TIMESTAMP) as RATING_TIMESTAMP
from raw_ratings