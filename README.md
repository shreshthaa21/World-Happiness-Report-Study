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
* The next step was to name the columns in a common manner (the ones that weren't), and then SQL was used to join the datasets for all the years to get a resultant table of only the happiness scores for all three years, associated with its respective country. A separate dataset was made for the same.

SQL Query: [Data Joining]() 

## The Analyzing and Visualizing Process
To answer the first question, I have uploaded the dataset, year-wise, on **GRETL**, which is a statistical software. Through this, we can perform a regression analysis, which helps us figure out the variables that have the strongest impact on the dependent variable. 
In this case, the happiness score is the dependent variable. The explanatory variables are GDP per capita, Social Support, Life Expectancy, Freedom, Generosity, and Perceptions of corruption.

The interpretation of the [regression results]() are as follows:
* The R-squared values here give us the extent to which the variations in the scores are affected by the variations in the other variables. The values for the three years are 81.2%, 79%, and 77%. This shows that the overall Happiness Score is a significant consequence of all the mentioned factors. 
* On the basis of t-ratios and p-values, it can be estimated that **GDP Per Capita** is the most crucial factor of determination (the p-values are less than 0.05 for all three years). The income, thus, is an essential determinant for happiness amongst individuals.
*  Followed by this we have **Life Expectancy**. Although from the statistical evaluation, this factor is not very consistent with the results (high p-values and insignificant t-ratios), but in the overall analysis (R-squared), it makes an important element of the analysis.

Also, from the graphical analysis of the remaining factors (for example, for 2019), it is observed that there is lack of consistency between the score and the other factors* in the plot – thus, we eliminate them for further __individual_ analysis_.

![image]<img width="1279" height="1624" alt="2019_Individual_Factors_Viz" src="https://github.com/user-attachments/assets/662d6553-7b60-410a-a06e-fb4d8d987f18" />

*While social support, freedom, perceptions of corruption and generosity lack a significant relationship with score, social support is equally inconsistent as it is highly accumulated towards one side of the plot – making it insignificant to relate directly with the happiness score.
Further, factor-wise plots shall be seen for Life Expectancy and GDP Per Capita. 






















