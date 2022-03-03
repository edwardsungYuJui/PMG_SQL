USE pmg_challenge;
SELECT 
    md.impressions, md.clicks, sr.revenue
FROM
    marketing_data md
        JOIN
    store_revenue sr ON md.id = sr.id
GROUP BY date , geo;