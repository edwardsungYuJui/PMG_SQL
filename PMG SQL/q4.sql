USE pmg_challenge;
SELECT 
md.impressions,
md.clicks,
(md.clicks/md.impressions)*100 AS CTR,
sr.revenue
FROM 
marketing_data md
JOIN store_revenue sr
ON md.id = sr.id
GROUP BY date, geo;

# In my opinion, I look at the Click Through Rate, which takes the total clicks divided by the total impressions from the markting_data table.
# I measure this parameter to get the idea of how efficient the campaign is. From the result, I got that MN has the highest CTR, TX second, 
# CA third, and NY forth. Generally, I would conclude that MN is the most efficient store. But I thought we could also take revenue into 
# consideration. Thus, I got CA has the highest revenue, NY second, and TX third. In summary, I would conclude that CA is the most efficient store.