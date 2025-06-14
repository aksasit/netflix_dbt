with raw_tags as (
    select * from netflix_db.raw.raw_tags
)
select 
    USER_ID,
    MOVIE_ID,
    TAG,
    to_timestamp_ltz(TIMESTAMP) as TAG_TIMESTAMP
from raw_tags