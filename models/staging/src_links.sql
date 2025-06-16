with raw_links as (
    select * from {{ source('raw_data', 'r_links')}}
)
select 
    MOVIE_ID,
    IMDB_ID,
    TMDB_ID
from raw_links