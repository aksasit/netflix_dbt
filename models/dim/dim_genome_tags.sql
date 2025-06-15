with src_tags as (
    select * from {{ ref('src_genome_tags') }}
)

select 
    TAG_ID,
    INITCAP(TRIM(TAG)) as TAG_NAME
from src_tags