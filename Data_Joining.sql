select  seventeen.Country,seventeen.Score, eighteen.Score, nineteen.Score from pracdac.happiness_report.2017 AS seventeen
LEFT JOIN pracdac.happiness_report.2018 AS eighteen 
ON seventeen.Country = eighteen.Country 
LEFT JOIN pracdac.happiness_report.2019 AS nineteen 
ON seventeen.Country = nineteen.Country 
