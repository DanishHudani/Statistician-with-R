library(tidyverse)

food_consumption <- readRDS("datasets/food_consumption.rds")

head(food_consumption)

#Measure of Center

# Filter for Belgium
belgium_consumption <- food_consumption %>% filter(country == "Belgium")
belgium_consumption

# Filter for USA
usa_consumption <- food_consumption %>% filter(country == "USA")
usa_consumption

# Calculate mean and median consumption in Belgium
mean(belgium_consumption$consumption)
median(belgium_consumption$consumption)

# Calculate mean and median consumption in USA
mean(usa_consumption$consumption)
median(usa_consumption$consumption)

food_consumption %>%
  # Filter for Belgium and USA
  filter(country %in% c("Belgium", "USA")) %>%
  # Group by country
  group_by(country) %>%
  # Get mean_consumption and median_consumption
  summarize(mean_consumption = mean(consumption),
            median_consumption = median(consumption))


food_consumption %>%
  # Filter for rice food category
  filter(food_category == "rice") %>%
  # Create histogram of co2_emission
  ggplot(aes(x = co2_emission)) + geom_histogram()

# According to the histogram of c02_emisson of the rice, we can say that data is right skewed

food_consumption %>%
  # Filter for rice food category
  filter(food_category == "rice") %>% 
  # Get mean_co2 and median_co2
  summarize(mean_co2 = mean(co2_emission),
            median_co2 = median(co2_emission))

# The mean is substantially higher than the median since it's being pulled up by the high values over 100 kg/person/year.

# Given the skewness of data, median is the best measure of central tendency to summarize the kilograms of co2_emission
# per year for rice per person.

















