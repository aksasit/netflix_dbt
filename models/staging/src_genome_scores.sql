with raw_genome_scores as (
    select * from {{ source('raw_data', 'r_genome_scores')}}
)
select 
    MOVIE_ID,
    TAG_ID,
    RELEVANCE
FROM raw_genome_scores