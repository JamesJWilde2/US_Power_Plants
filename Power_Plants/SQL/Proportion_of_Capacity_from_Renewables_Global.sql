-- Finding what proportion of each country's total power plant capacity uses renewables as the primary fuel type

-- Selecting total capacity per country
WITH total_capacity_table AS (
    SELECT
        country_long,
        SUM(capacity_mw) AS total_capacity
    FROM
        global_power_plants
    GROUP BY
        country_long
),

-- Selecting total capacity of plants with renewables as primary fuel types for each country
renewable_energy_table AS (
    SELECT
        country_long,
        SUM(capacity_mw) AS renewable_capacity
    FROM
        global_power_plants
    WHERE
        primary_fuel IN ('Wind', 'Solar', 'Hydro', 'Geothermal', 'Biomass')
    GROUP BY
        country_long
),

-- Selecting proportion of capacity coming from plants with renewables as primary fuel type
proportion_renewable AS (
    SELECT
        tc.country_long,
        tc.total_capacity,
        re.renewable_capacity,
        COALESCE(re.renewable_capacity, 0) / tc.total_capacity AS renewable_capacity_proportion
    FROM
        total_capacity_table tc
    LEFT JOIN
        renewable_energy_table re ON tc.country_long = re.country_long
)

-- Outputting full table and ordering
SELECT
    country_long,
    total_capacity,
    renewable_capacity,
    renewable_capacity_proportion
FROM
    proportion_renewable
ORDER BY
    renewable_capacity_proportion DESC;
