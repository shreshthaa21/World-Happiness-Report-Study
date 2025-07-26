# World Happiness Report (2017-2019)
As a part of the course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone) 
## Objective
Through this case study I will be using primary data and get some insights on it, through its analysis and visualization, by utilizing the tools taught through the coursework of Google Data Analytics Professional Certificate.
## Data Source
The data on the World Happiness Report has been taken from Kaggle, uploaded by Sustainable Development Solutions Network (Owner) and Abigail Larion (Admin).
Here is the [quick link](https://www.kaggle.com/datasets/unsdsn/world-happiness) for the dataset. I have picked the data for the years 2017, 2018 and 2019.

## Tools Used
The data is not immensely huge, so for most of the cleaning, MS Excel has been used. While the preparation of data involves the use of SQL.
This particular data is more viz-focused, as the questions require going through plots for the different aspects of data. The visualization have been done using Tableau, MS Excel and GRETL.

## Background
### Context
The World Happiness Report is a landmark survey of the state of global happiness. The first report was published in 2012, the second in 2013, the third in 2015, and the fourth in the 2016 Update. The World Happiness 2017, which ranks 155 countries by their happiness levels, was released at the United Nations at an event celebrating International Day of Happiness on March 20th. The report continues to gain global recognition as governments, organizations and civil society increasingly use happiness indicators to inform their policy-making decisions. 

### Inspiration for the Data
What countries or regions rank the highest in overall happiness and each of the six factors contributing to happiness? How did country ranks or scores change between the 2015 and 2016 as well as the 2016 and 2017 reports? Did any country experience a significant increase or decrease in happiness? 

### What do the columns succeeding the Happiness Score describe?
The following columns: GDP per Capita, Family, Life Expectancy, Freedom, Generosity, Trust Government Corruption describe the extent to which these factors contribute in evaluating the happiness in each country. If you add all these factors up, you get the happiness score so it might be un-reliable to model them to predict Happiness Scores. 

(The background has been taken from the [source](https://www.kaggle.com/datasets/unsdsn/world-happiness) of this dataset.)

## Task
The task is to design policies that align with the factors of happiness and formulate them such that, the scores observe an increase through the course of time and, the gap between the extremes reduces.

## Questions for the Task
We need to find out answers to these questions that could further help design policies in a country to increase the happiness score and the main focus shall be the specific factors. 
1.	What factors have the most significant impact on the happiness score of a country?
2.	How did happiness score change through the years in the five countries with the highest scores and the five countries with the lowest scores? 
3.	Is the gap between the happiest and unhappiest countries widening or shrinking? 

## Preparing Data
The following was done in order to organize the data, so as to answer the above questions:
* I first organized the dataset by finding and eliminating outliers on MS Excel.
* Then, I made a separate dataset comprising of the top five and bottom five countries from the list.
* This was followed by finding the averages and differences between these averages to find the gap between the extremes, for all three years.
* The next step was to name the columns in a common manner (the ones that weren't), and then SQL was used to join the datasets for all the years to get a [resultant table]() of only the happiness scores for all three years, associated with its respective country. A separate dataset was made for the same.

SQL Query: [Data Joining](https://github.com/shreshthaa21/World-Happiness-Report-Viz/blob/main/Data_Joining.sql) 

## Analyzing and Visualizing Process
To answer the _first question_, I have uploaded the dataset, year-wise, on **GRETL**, which is a statistical software. Through this, we can perform a regression analysis, which helps us figure out the variables that have the strongest impact on the dependent variable. 
In this case, the happiness score is the dependent variable. The explanatory variables are GDP per capita, Social Support, Life Expectancy, Freedom, Generosity, and Perceptions of corruption.

The interpretation of the [regression results]() are as follows:
* The R-squared values here give us the extent to which the variations in the scores are affected by the variations in the other variables. The values for the three years are 81.2%, 79%, and 77%. This shows that the overall Happiness Score is a significant consequence of all the mentioned factors. 
* On the basis of t-ratios and p-values, it can be estimated that **GDP Per Capita** is the most crucial factor of determination (the p-values are less than 0.05 for all three years). The income, thus, is an essential determinant for happiness amongst individuals.
*  Followed by this we have **Life Expectancy**. Although from the statistical evaluation, this factor is not very consistent with the results (high p-values and insignificant t-ratios), but in the overall analysis (R-squared), it makes an important element of the analysis.

Also, from the graphical analysis of the remaining factors (for example, for 2019), it is observed that there is lack of consistency between the score and the other factors* in the plot – thus, we eliminate them for further __individual_ analysis_.

<img width="1000" height="1300" alt="2019_Individual_Factors_Viz" src="https://github.com/user-attachments/assets/662d6553-7b60-410a-a06e-fb4d8d987f18" />

*While social support, freedom, perceptions of corruption and generosity lack a significant relationship with score, social support is equally inconsistent as it is highly accumulated towards one side of the plot – making it insignificant to relate directly with the happiness score.
Further, factor-wise plots shall be seen for Life Expectancy and GDP Per Capita. 

### 2017 Factor-Wise Plots

<img width="500" height="330" alt="2017_GDP" src="https://github.com/user-attachments/assets/72a3af95-9e4c-447a-8122-dd46ee280bda" />

<img width="500" height="330" alt="2017_LE" src="https://github.com/user-attachments/assets/0c275678-9cc0-4b23-a01b-edc96544c2b6" />

### 2018 Factor-Wise Plots

<img width="500" height="330" alt="2018_GDP" src="https://github.com/user-attachments/assets/d2f27f5e-37fc-4f0d-885a-048b1c265ef7" />

<img width="500" height="330" alt="2018_LE" src="https://github.com/user-attachments/assets/19a343e4-baaa-4506-b0ed-5eee8ed94805" />

### 2019 Factor-Wise Plots

<img width="500" height="330" alt="2019_GDP" src="https://github.com/user-attachments/assets/c32a44f6-3da1-432b-95d0-c657ca920876" />

<img width="500" height="330" alt="2019_LE" src="https://github.com/user-attachments/assets/3c89c191-e67e-4063-bb9a-c95ab84aa4de" />

The actual values are the ones observed from the dataset while, the fitted values are the values predicted on the basis of the regression model. In these two factors, most of the actual and fitted values align in the same path - some even coincide. Thus, these factors prove to be **the most significant**.

To answer the _second and third question_, we use the newly prepared datasets. Using Tableau, we depict the happiness through the [world map representations](https://public.tableau.com/app/profile/shreshtha.s5713/viz/Happiness-Report-Maps). The darkest shade of blue shows the countries with the highest scores, whereas the darkest shades of green shows the countries with the lowest scores.

<img width="1000" height="840" alt="Dashboard 1" src="https://github.com/user-attachments/assets/f6b2bd49-455c-4be6-b50b-60465fb3f848" />

<img width="1000" height="840" alt="Dashboard 1 (1)" src="https://github.com/user-attachments/assets/5b95d2df-b73f-46a9-bbd2-a7adad8b3544" />

<img width="1000" height="840" alt="Dashboard 1 (2)" src="https://github.com/user-attachments/assets/982f342a-ca6a-40c9-91c5-5812372955d4" />

The next step is observing the differences/gaps in the happiest and unhappiest nations. The dataset for five happiest and five unhappiest countries was made during the process of cleaning and preparing data. Using that, the average scores have been calculated and plotted as a bar chart, on MS Excel – to illustrate the differences through the years between the two extremes of the dataset. 

For 2017, the difference in the averages is 4.475.

<img width="500" height="340" alt="image" src="https://github.com/user-attachments/assets/0689285c-bbad-4932-b3a5-5a9374d6ce6e" />

For 2018, the difference in the averages is 4.3726.

<img width="500" height="340" alt="image" src="https://github.com/user-attachments/assets/93cc076d-e8d3-4740-b1ed-b4a8284d2e45" />

For 2019, the difference in the averages is 4.4402.

<img width="500" height="340" alt="image" src="https://github.com/user-attachments/assets/0bf77ffb-d7e5-4b58-a0ed-be84b29eb7ac" />

The difference in the averages has gone from **4.475** (2017) to **4.3726** (2018) and then to **4.4402** (2019). The gap narrowed slightly in 2018, but increased again in 2019, but not to the previous extent. **This demonstrates that positive impact is taking place.** But for the unhappier countries to match the level of the happy ones is definitely a _challenge_. This is because, as observed in the world map depiction, like the scores of the low-ranking countries are increasing, they are also increasing for the top-ranking countries. It shows the progress in happiness is being made from both the extreme ends, making _the average change in their gap almost negligible_.  

## Answers to the Questions Asked:
Finally, here are the answers to the questions that were asked in the beginning of the task:

1. What factors have the most significant impact on the happiness score of a country?
   From our regression analysis and factor-wise plots, we concluded that the most significant factors to determine the happiness score of a country are Life Expectancy and GDP Per Capita.

2. How did happiness score change through the years in the five countries with the highest scores and the five countries with the lowest scores?
   From our world map depictions, we found out that the scores for countries have been increasing through the years. But not only the lower-limit of scores, but the upper-limit has also seen an increase – both low and high-ranking countries have observed increases in their scores, as well as in their factors, on an average.

3. Is the gap between the happiest and unhappiest countries widening or shrinking?
   It can be said that the gap is neither widening nor shrinking. The gap is approximately same through the three years. It can be seen in the difference of the average and the bar charts. This again implies the statement from the previous answer – both extremes are observing a positive change in their happiness scores.

## Probable Task Solution / Actions
Policies should be designed such that they encompass all the fators, but they should be particularly focused on increasing the GDP Per Capita and Life Expectancy. This can be done through employment opportunites, daily-wage work, and availability of better and affordable healthcare. The happiest countries have relatively high per capita income and life expectancy, and it justifies the high scores of these countries on the annual world happiness report. 




























