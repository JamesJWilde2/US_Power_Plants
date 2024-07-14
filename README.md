# Power Plants in the United States

Where are power plants in the United States located? How many are there? What types of fuel do they use? Which plants have the most capacity?

Using the Global Power Plant Database, I set out to answer these questions. Using postgreSQL and VS Code, I queried the data. Then, I used Tableau to visualize three charts. 


The first chart is a map showing each power plant in the United States, color-coded by its primary fuel type. The size of each plant's dot represents the capacity of the plant.
![Screenshot 2024-07-14 at 2 10 33 PM](https://github.com/user-attachments/assets/78a2b4ce-d774-432b-bc1a-38c255e2a6ca)
Link: https://public.tableau.com/views/USPowerPlantsPrimaryFuelsCapacity2019/USPowerPlantsPrimaryFuelsCapacity2019?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

The second chart is a simple bar chart, showing the number of plants of each primary fuel type (solar takes the lead here).
![Screenshot 2024-07-14 at 1 43 34 PM](https://github.com/user-attachments/assets/38af5a01-8d2e-4dfb-9d4f-b2ce282355f2)
Link: https://public.tableau.com/views/USPowerPlantsperPrimaryFuelType2019/NumberofPlantsperPrimaryFuelType2019?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

The third chart is another simple bar chart, this time showing the median capacity for plants of each primary fuel type (nuclear takes the lead this time).
![Screenshot 2024-07-14 at 1 43 49 PM](https://github.com/user-attachments/assets/2f22f27c-69fb-4d5b-b5bb-f2c3551283cb)
Link: https://public.tableau.com/views/USMedianPowerPlantCapacityperPrimaryFuelType2019/MedianCapacityperPrimaryFuelType2019?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

**So what? OK, here are a few takeaways:**
- The map is a great resource (in my opinion) to check out what power plants exist near you. (How big are those plants? What fuel do they use?)
- Solar plants are the most common in the U.S, but they also have the lowest median capacity.
- Nuclear plants, meanwhile, are relatively rare, but have the highest median capacity.
- The highest median capacity plants that don't require fossil fuels (and aren't nuclear plants) are wind plants.


An important note: each power plant can have more than one fuel type. (Most plants only have one fuel type, but many have more than one.) The primary fuel type, according to the GPPD, represents the fuel type used the most by each power plant.

Data source: Global Energy Observatory, Google, KTH Royal Institute of Technology in Stockholm, Enipedia, World Resources Institute. 2019. Global Power Plant Database. Published on Resource Watch and Google Earth Engine. http://resourcewatch.org/ https://earthengine.google.com/
