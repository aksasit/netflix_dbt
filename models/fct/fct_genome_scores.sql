with src_scores as (
    select * from {{ ref('src_genome_scores')}}
)
select 
    MOVIE_ID,
    TAG_ID,
    ROUND(RELEVANCE, 4) as RELEVANCE_SCORE
from src_scores
where RELEVANCE > 0
