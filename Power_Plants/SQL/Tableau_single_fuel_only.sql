SELECT  
    country,
    name,
    gppd_idnr,
    capacity_mw,
    latitude,
    longitude,
    primary_fuel,
    commissioning_year,
    owner,
    year_of_capacity_data
FROM global_power_plants
WHERE 
    country = 'USA' AND
    other_fuel1 IS NULL;