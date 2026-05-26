# Life Satisfaction Econometrics Project

This project analyses the relationship between life satisfaction and economic, health, and environmental indicators across countries using panel data regression in R.

The study was originally completed as part of my MSc Economics dissertation at Birkbeck, University of London.

## Project Overview

The analysis investigates how life satisfaction is associated with:

- GDP per capita
- Life expectancy
- Unemployment
- Inflation
- Under-5 mortality
- Access to clean fuels and technologies for cooking

The dependent variable is the Cantril Ladder life satisfaction score.

## Dataset

The dataset combines international country-year observations from:

- World Happiness Report
- World Bank World Development Indicators
- Our World in Data

The final analysis used 944 country-year observations across 118 countries.

## Methods Used

- Panel data regression
- Fixed effects model
- Random effects model
- Hausman test
- Variance Inflation Factor test
- Breusch-Pagan test
- Scatter plot analysis
- Descriptive statistics

## Technologies Used

- R
- plm
- ggplot2
- stargazer
- xtable
- psych
- lmtest
- car
- Excel

## Key Findings

The analysis found that GDP per capita, unemployment, inflation, under-5 mortality, and access to clean cooking fuels were significantly associated with life satisfaction.

The Hausman test supported the use of a fixed effects model. Diagnostic testing also identified multicollinearity and heteroskedasticity, which were discussed as limitations and areas for further improvement.

## Project Structure

```text
Life-Satisfaction-Econometrics/
│
├── R code/
│   └── dissertation_analysis.R
│
├── dissertation/
│   └── Dissertation life satisfaction.docx
│
├── outputs/
│   ├── model_summary.html
│   ├── bp_test_table.csv
│   └── table_output.html
│
└── README.md

