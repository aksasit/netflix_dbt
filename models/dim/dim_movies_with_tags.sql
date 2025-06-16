{{
    config(
        materialized='ephemeral'
    )
}}

with movies as (
    select * from {{ ref('dim_movies')}}
),
tags as (
    select * from {{ ref('dim_genome_tags')}}
),
scores as (
    select * from {{ ref('fct_genome_scores')}}
)

select 
    m.MOVIE_ID,
    m.MOVIE_TITLE,
    m.GENRES,
    t.TAG,
    s.RELEVANCE_SCORE
from movies as m
left join scores as s on m.MOVIE_ID = s.MOVIE_ID
left join tags as t on t.tag_id = s.tag_id
