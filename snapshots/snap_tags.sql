{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshots',
        unique_key=['USER_ID', 'MOVIE_ID','TAG'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidate_hard_deletes=True
    )
}}

select 
    {{ dbt_utils.generate_surrogate_key(['USER_ID', 'MOVIE_ID','TAG']) }} as ROW_KEY,
    USER_ID,
    MOVIE_ID,
    TAG,
    CAST(TAG_TIMESTAMP AS TIMESTAMP_NTZ) AS TAG_TIMESTAMP
from {{ ref('src_tags') }}

{% endsnapshot %}
