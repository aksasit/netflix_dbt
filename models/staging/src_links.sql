with raw_links as (
    select * from netflix_db.raw.raw_links
)
select 
    MOVIE_ID,
    IMDB_ID,
    TMDB_ID
from raw_links