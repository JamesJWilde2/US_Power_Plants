# Power Plants in the United States and Across the Globe

**What is this?**
This is a data analysis project looking at power plant data across the globe.

**I try to answer a few questions in this analysis:**
1. Where are power plants in the United States located? How many are there? What's their capacity?
2. What types of fuel do those plants use? Which fuel types are most common?
3. Which fuel types have the most capacity?
4. And finally: which countries have the highest percentage of capacity from plants that primarily use renewable fuels?

I used the [Global Power Plant Database]([url](https://datasets.wri.org/dataset/globalpowerplantdatabase)) to answer these questions. I queried the data using postgreSQL and VS Code. I then used Tableau to visualize four charts. 


First, we have a map showing each power plant in the United States, color-coded by its primary fuel type. The size of each plant's dot represents the capacity of the plant.
![Screenshot 2024-07-14 at 2 10 33 PM](https://github.com/user-attachments/assets/78a2b4ce-d774-432b-bc1a-38c255e2a6ca)
[Click here to interact with the map!]([url](https://public.tableau.com/views/USPowerPlantsPrimaryFuelsCapacity2019/USPowerPlantsPrimaryFuelsCapacity2019?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))

Second, have a simple bar chart, showing the number of plants of each primary fuel type (solar takes the lead here).
![Screenshot 2024-07-14 at 1 43 34 PM](https://github.com/user-attachments/assets/38af5a01-8d2e-4dfb-9d4f-b2ce282355f2)
[Link.]([url](https://public.tableau.com/views/USPowerPlantsperPrimaryFuelType2019/NumberofPlantsperPrimaryFuelType2019?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))

Third, we have another simple bar chart, this time showing the median capacity for plants of each primary fuel type (nuclear takes the lead this time).
![Screenshot 2024-07-14 at 1 43 49 PM](https://github.com/user-attachments/assets/2f22f27c-69fb-4d5b-b5bb-f2c3551283cb)
[Link.]([url](https://public.tableau.com/views/USMedianPowerPlantCapacityperPrimaryFuelType2019/MedianCapacityperPrimaryFuelType2019?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))

And finally, we have a global map showing the percentage of capacity that comes from plants that primarily use renewable fuels, per country.
![Screenshot 2024-07-15 at 1 42 06 PM](https://github.com/user-attachments/assets/a3789475-80b8-4208-b970-b209b25f99a2)
[Link.]([url](https://public.tableau.com/views/PowerPlantsCapacitiesfromRenewableFuelsAroundtheWorld/PowerPlantCapacitiesfromRenewableFuelsAroundtheWorld?:language=en-US&:sid=94D9009FF9C54CDDB9DD8291B059FC56-0:0&:redirect=auth&:display_count=n&:origin=viz_share_link))

**So what? OK, here are a few takeaways:**
- The first map is a great resource (in my opinion) to check out what power plants exist near you. (How big are those plants? What fuel do they use?)
- Solar plants are the most common in the U.S, but they also have the lowest median capacity.
- Nuclear plants, meanwhile, are relatively rare, but have the highest median capacity.
- The highest median capacity plants that don't require fossil fuels (and aren't nuclear plants) are wind plants.
- Countries in the Global South appear to, at least from a casual observation, have higher proportions of their capacity coming from plants primarily fueled by renewables.

**Here are some questions I'm still mulling over, but will leave for further analyses:**
- How would primary plant fuel type correlate with other geographic factors, like household income?
- How have capacities changed over time? How have they changed per primary fuel type?
- How does capacity compare with generation?
- What's the best way to account for the fact that many plants have more than one fuel type?


(Each power plant can have more than one fuel type. Most plants only have one fuel type, but many have more than one. The primary fuel type, according to the GPPD, represents the fuel type used _the most_ by each power plant.)

Data source: Global Energy Observatory, Google, KTH Royal Institute of Technology in Stockholm, Enipedia, World Resources Institute. 2019. Global Power Plant Database. Published on Resource Watch and Google Earth Engine. http://resourcewatch.org/ https://earthengine.google.com/
