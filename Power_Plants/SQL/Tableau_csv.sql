SELECT  
    country,
    name,
    gppd_idnr,
    capacity_mw,
    latitude,
    longitude,
    primary_fuel,
    other_fuel1,
    other_fuel2,
    other_fuel3,
    commissioning_year,
    owner,
    year_of_capacity_data
FROM global_power_plants
WHERE 
    country = 'USA';