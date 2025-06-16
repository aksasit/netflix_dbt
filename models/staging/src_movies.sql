with raw_movies as
(
    select * from {{ source('raw_data', 'r_movies')}}
)
select 
    *
from raw_movies