SELECT 
    primary_fuel AS primary_fuel_of_plants,
    ROUND(SUM(capacity_mw), 1) AS total_capacity
FROM global_power_plants
WHERE country = 'USA'
GROUP BY primary_fuel
ORDER BY total_capacity DESC;