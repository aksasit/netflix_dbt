with raw_ratings as (
    select * from netflix_db.raw.raw_ratings
)

select 
    USER_ID,
    MOVIE_ID,
    RATING,
    to_timestamp_ltz(TIMESTAMP) as RATING_TIMESTAMP
from raw_ratings