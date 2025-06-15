with ratings as (
    select distinct USER_ID from {{ ref('src_ratings') }}
),
tags as (
    select distinct USER_ID from {{ ref('src_tags') }}
)

select distinct USER_ID
from (
    select * from ratings
    union
    select * from tags
)