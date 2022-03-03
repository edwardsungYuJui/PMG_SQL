USE pmg_challenge;
SELECT sr.geo, sr.revenue 
FROM ( SELECT geo, revenue, rank() over (order by revenue DESC) r FROM store_revenue) sr
WHERE sr.r <= 10;