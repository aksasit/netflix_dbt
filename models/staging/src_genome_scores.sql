with raw_genome_scores as (
    select * from netflix_db.raw.raw_genome_scores
)
select 
    MOVIE_ID,
    TAG_ID,
    RELEVANCE
FROM raw_genome_scores