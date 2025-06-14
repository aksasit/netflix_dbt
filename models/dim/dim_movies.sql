with src_movies as (
    select * from {{ref('src_movies')}}
)

select 
    MOVIE_ID,
    INITCAP(TRIM(TITLE)) AS MOVIE_TITLE,
    SPLIT(GENRES, '|') AS GENRE_ARRAY,
    GENRES
from src_movies