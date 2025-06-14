with raw_genome_tags as (
    select * from netflix_db.raw.raw_genome_tags
)
select 
    TAG_ID,
    TAG
from raw_genome_tags
