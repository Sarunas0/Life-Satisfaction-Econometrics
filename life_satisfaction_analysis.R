install.packages("plm")
library(plm)
my_data <- read.csv("Data Set.csv")
head(my_data)
str(my_data)
names(my_data)
pdata <- pdata.frame(my_data, index = c("Country", "Year"))
fixed.effects <- plm(Cantril.ladder.score.Life.satisfaction ~ GDP.per.capita..PPP..current.international... + Life.expectancy.at.birth..total..years. + Unemployment..total....of.total.labor.force...modeled.ILO.estimate. + Inflation..consumer.prices..annual... + Mortality.rate..under.5..per.1.000.live.births. + Access.to.clean.fuels.and.technologies.for.cooking....of.population., data = pdata, model = "within")

random.effects <- plm(Cantril.ladder.score.Life.satisfaction ~ GDP.per.capita..PPP..current.international... + Life.expectancy.at.birth..total..years. + Unemployment..total....of.total.labor.force...modeled.ILO.estimate. + Inflation..consumer.prices..annual... + Mortality.rate..under.5..per.1.000.live.births. + Access.to.clean.fuels.and.technologies.for.cooking....of.population., data = pdata, model = "random")

summary(fixed.effects)
summary(random.effects)

hausman.test <- phtest(fixed.effects, random.effects)
print(hausman.test)
install.packages("stargazer")
library(stargazer)
write.csv(my_data, "my_data.csv", row.names = FALSE)
library(plm)
fixed_model <- plm(Cantril.ladder.score.Life.satisfaction ~ GDP.per.capita..PPP..current.international... + Life.expectancy.at.birth..total..years. + Unemployment..total....of.total.labor.force...modeled.ILO.estimate. + Inflation..consumer.prices..annual... + Mortality.rate..under.5..per.1.000.live.births. + Access.to.clean.fuels.and.technologies.for.cooking....of.population., data = my_data, model = "within")
summary(fixed_model)
install.packages("xtable")
library(xtable)
xtable(summary(fixed_model)$coefficients)
library(xtable)
table <- xtable(summary(fixed_model)$coefficients)
print(table, type = "html", file = "my_model_summary.html")

# Calculate residuals
residuals <- resid(fixed_model)

# Calculate fitted values
fitted_values <- fitted.values(fixed_model)

# Create a plot
plot(x = fitted_values, y = residuals, ylab = "Residuals", xlab = "Fitted Values", main = "Residuals vs Fitted Values")
abline(h = 0, lty = 2) # Add a horizontal line at zero
# Get the transformed data as used in the fixed effects model
data_transformed <- fixed_model$model
# Make sure the car package is installed and loaded
install.packages("car")
install.packages("carData")
library(car)
library(carData)
# Estimate your regression model
model <- lm(Cantril.ladder.score.Life.satisfaction ~., data = my_data)
# Compute VIF
vif(model)
# Load necessary package
library(lmtest)

# Run Breusch-Pagan test
bptest(model)
# Create the data frame
bp_test_table <- data.frame(Test = "Breusch-Pagan",Test_Statistic = 409.17,Degrees_of_Freedom = 125,p_value = "< 0.001")
# Print the table
print(bp_test_table)
write.csv(bp_test_table, "bp_test_table.csv")
install.packages("ggplot2")
library(ggplot2)
ggplot(data = my_data_no_na, aes(x=GDP.per.capita..PPP..current.international..., y=Cantril.ladder.score.Life.satisfaction)) +
  geom_point() +
  labs(title="Scatterplot of GDP per capita and Life Satisfaction",
       x="GDP per Capita (PPP)",
       y="Life Satisfaction")
ggplot(data = my_data_no_na, aes(x=Life.expectancy.at.birth..total..years., y=Cantril.ladder.score.Life.satisfaction)) +
  geom_point() +
  labs(title="Scatterplot of Life Expectancy and Life Satisfaction",
       x="Life Expectancy at Birth (Total years)",
       y="Life Satisfaction")
ggplot(data = my_data_no_na, aes(x=Unemployment..total....of.total.labor.force...modeled.ILO.estimate., y=Cantril.ladder.score.Life.satisfaction)) +
  geom_point() +
  labs(title="Scatterplot of Unemployment and Life Satisfaction",
       x="Unemployment (Total % of total labor force)",
       y="Life Satisfaction")
ggplot(data = my_data_no_na, aes(x=Inflation..consumer.prices..annual..., y=Cantril.ladder.score.Life.satisfaction)) +
  geom_point() +
  labs(title="Scatterplot of Inflation and Life Satisfaction",
       x="Inflation (Consumer Prices Annual %)",
       y="Life Satisfaction")
ggplot(data = my_data_no_na, aes(x=Mortality.rate..under.5..per.1.000.live.births., y=Cantril.ladder.score.Life.satisfaction)) +
  geom_point() +
  labs(title="Scatterplot of Under-5 Mortality Rate and Life Satisfaction",
       x="Under-5 Mortality Rate (per 1,000 live births)",
       y="Life Satisfaction")
ggplot(data = my_data_no_na, aes(x=Access.to.clean.fuels.and.technologies.for.cooking....of.population., y=Cantril.ladder.score.Life.satisfaction)) +
  geom_point() +
  labs(title="Scatterplot of Access to Clean Fuels and Technologies for Cooking and Life Satisfaction",
       x="Access to Clean Fuels and Technologies for Cooking (% of population)",
       y="Life Satisfaction")
# First, install the tidyr package if you haven't done so
install.packages("tidyr")

# Then, load the tidyr package
library(tidyr)

# Gather your data into long format
my_data_long <- gather(my_data_no_na, "Variable", "Value", GDP.per.capita..PPP..current.international..., Life.expectancy.at.birth..total..years., Unemployment..total....of.total.labor.force...modeled.ILO.estimate., Inflation..consumer.prices..annual..., Mortality.rate..under.5..per.1.000.live.births., Access.to.clean.fuels.and.technologies.for.cooking....of.population.)

# Now, create the faceted scatter plot
ggplot(data = my_data_long, aes(x = Value, y = Cantril.ladder.score.Life.satisfaction)) +
geom_point() +facet_wrap(~ Variable, scales = "free") +
labs(title = "Scatterplots of Variables vs. Life Satisfaction", y = "Life Satisfaction")
summary(my_data)
install.packages("psych")
library(psych)

install.packages(c("psych", "stargazer"))
library(psych)
library(stargazer)
desc_output <- describe(my_data)
stargazer(desc_output, type="text")
stargazer(desc_output, type="html", out="table_output.html")










