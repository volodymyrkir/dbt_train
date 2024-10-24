SELECT
    *
FROM
    {{ ref('fct_reviews') }} fr
JOIN {{ ref('dim_listings_cleansed') }} dc
ON fr.listing_id = dc.listing_id
WHERE fr.review_date < dc.created_at