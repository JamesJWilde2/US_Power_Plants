SELECT 
    name,
    capacity_mw
FROM global_power_plants
WHERE country = 'USA'
ORDER BY capacity_mw DESC
LIMIT 10;