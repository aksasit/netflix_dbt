with rating_summary as (
    select
        movie_id,
        avg(rating) as average_rating,
        count(*) as total_ratings
    from {{ ref('fct_ratings') }}
    group by movie_id
    having count(*) > 100
)

select 
    m.movie_title,
    rs.average_rating,
    rs.total_ratings    
from rating_summary as rs
join {{ ref('dim_movies') }} as m on rs.movie_id = m.movie_id
order by rs.average_rating desc;
