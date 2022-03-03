USE pmg_challenge;
SELECT 
    md.geo, SUM(sr.revenue)
FROM
    store_revenue sr
        JOIN
    marketing_data md ON sr.id = md.id
GROUP BY geo;