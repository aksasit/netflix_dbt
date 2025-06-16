{{ config(materialized = 'table') }}

with fct_ratings as (
    select * from {{ ref('fct_ratings')}}
),
seed_movie_dates as (
    select * from {{ ref('seed_movie_release_dates')}}
)

select 
    f.*,
    case 
        when md.release_date is null then 'UNKNOWN'
        else 'KNOWN'
    end as RELEASE_INFO
from fct_ratings as f
left join seed_movie_dates as md on f.MOVIE_ID = md.MOVIE_ID