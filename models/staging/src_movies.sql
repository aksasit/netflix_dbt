with raw_movies as
(
    select * from netflix_db.raw.raw_movies
)
select 
    *
from raw_movies