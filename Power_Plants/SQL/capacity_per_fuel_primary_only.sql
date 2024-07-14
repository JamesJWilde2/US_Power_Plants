-- Only selects plants with a single fuel type to avoid possible misleading capacities

SELECT 
    primary_fuel,
    ROUND(SUM(capacity_mw), 1) AS total_capacity
FROM global_power_plants
WHERE 
    country = 'USA' AND
    other_fuel1 IS NULL
GROUP BY primary_fuel
ORDER BY total_capacity DESC;