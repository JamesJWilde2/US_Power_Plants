COPY global_power_plants
FROM '/Users/JamesWilde/Documents/Learning & Courses/Global Power Plants/all_folders/Power_Plants/csv_files/global_power_plant_database_1.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');