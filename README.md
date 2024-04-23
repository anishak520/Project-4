Introduction:
For our project, we looked at the relationship between crop yields and rainfall in different states in India over a 20 year time period in order to make predictions about future crop yields. We decided to look further into this data because food security is on the rise with over 200 million people facing food insecurity across the globe. This issue is particularly severe in South Asia as nearly half of the global malnourished population currently lives in the region. Agriculture plays a critical role in providing food security and climate change continues to threaten this life sustaining practice. With continuous changes in yearly rainfall due to climate change, it is crucial to understand how this impacts crop yield as it contributes to food security. Agricultural production in India is heavily reliant on rainfall as most agriculture occurs during monsoon season.
We joined two different data sets that included crop yields by state and rainfall by state between 1997-2017. The crop data included many different crops but we focused on maize, moong (Green Gram), rice, and urad. 

Data Cleaning and SQL:
	The rain data set was yearly while the crop data set was seasonal so we had to aggregate the crop data to be on the year level. We did this by doing a summation of the seasonal crop yields in SQL.  
	The crop data  was based on different districts in India while the rain data looked at different states. We had to match the districts to the states because they were different in both sets. We then used SQL to join the two data sets into one using an inner join on the state and year.
	In python,  we created a bar chart that displayed the crop yields of all of the different crops in our data set. Since there was such a high number of crops, we selected the top 4 crops with the most data points in order to make our model as effective as possible. 
We one-hot encoded states and crops so that we could represent these categories in our model. 

Results:
The four crops produce the highest yields in rainfall ranging from 500 to 1700 cm annually. Maize and rice have the highest yields, particularly around 1200 cm of annual rain. Both of these crops have a drastic decrease in crop yields when the rain is above 1500 cm or below 500 cm. Moonng and urad tend to have steady  yields with slight increases around 1000 cm of rainfall. 
While the accuracy of our model is not perfect, it is still relatively accurate. We plotted a line of best fit for the four crops and were very close to matching that with the actual line of best fit. Our model’s predicted yields tended to be slightly under what the actual yields would be.

Considerations: 
	There are several factors that  impact both rainfall and crop yields. It is important to consider this when predicting crop yields because there could be other factors limiting or encouraging growth such as temperature, sunlight, soil quality, and even work conditions for farmers. 
	It’s also important to consider that different machine learning models may be better suited at handling our data especially because it deals with time forecasting. 

Conclusions: 	
	Our machine learning model revealed that rainfall does affect crop yield. When there is too little or too much rainfall, there is a decrease in crop yield, especially  for maize and rice. All crops do best in rainfall ranging from 500 to 1700 cm annually. However, it is difficult to train machine learning models with real world data because of how complex the data can be, making it difficult to make generalizations. Many factors besides rainfall may impact crop yield. 

References:
Bowden, C., Foster, T. & Parkes, B. Identifying links between monsoon variability and rice production in India through 
machine learning. Sci Rep 13, 2446 (2023). https://doi.org/10.1038/s41598-023-27752-8.

Fickling, David. “India’s Food Security is Being Choked by Climate Change.” Bloomberg.com. 
https://www.bloomberg.com/opinion/articles/2023-07-24/climate-change-is-choking-india-s-food-security?embedded-che
ckout=true. Accessed April 18, 2024. 

Mapswire. “Physical Map of India. Projection: Lambert Conformal Conic.” https://mapswire.com/maps/india/.

Pyatakov, Oleg. Data collected from Ministry of Agriculture and Farmers Welfare of India (2023). “India Agriculture Crop Production” 
[dataset]. https://www.kaggle.com/datasets/pyatakov/india-agriculture-crop-production.

Saran, Sai. (2021). “Rainfall Data from 1901 to 2017” [dataset]. 
https://www.kaggle.com/datasets/saisaran2/rainfall-data-from-1901-to-2017-for-india/data.

World Food Programme. “India.” https://www.wfp.org/countries/india.

World Food Programme. “WFP India Country Brief February 2024.” 
https://docs.wfp.org/api/documents/WFP-0000157424/download/?_ga=2.223841682.884694252.1713484518-10813538
11.1713484517.
