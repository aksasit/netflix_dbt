with raw_genome_tags as (
    select * from {{ source('raw_data', 'r_genome_tags')}}
)
select 
    TAG_ID,
    TAG
from raw_genome_tags
