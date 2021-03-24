

world_happiness <- readRDS("datasets/world_happiness_sugar.rds")


# Create a scatterplot of happiness_score vs. life_exp
ggplot(world_happiness, aes(x = life_exp, y = happiness_score)) + 
  geom_point() + geom_smooth(method = "lm", se = FALSE)

# Correlation between life_exp and happiness_score
cor(world_happiness$happiness_score, world_happiness$life_exp)


# Scatterplot of gdp_per_cap and life_exp
ggplot(world_happiness, aes(x = gdp_per_cap, y = life_exp)) + geom_point()

cor(world_happiness$gdp_per_cap, world_happiness$life_exp)

# The correlation coefficient can't account for any relationships that aren't linear, regardless of strength.


# Scatterplot of happiness_score vs. gdp_per_cap
ggplot(world_happiness, aes(x = gdp_per_cap, y = happiness_score)) + geom_point()

# Calculate correlation
cor(world_happiness$gdp_per_cap, world_happiness$happiness_score)

# Create log_gdp_per_cap column
world_happiness <- world_happiness %>%
  mutate(log_gdp_per_cap = log(gdp_per_cap))

# Scatterplot of log_gdp_per_cap vs. happiness_score
ggplot(world_happiness, aes(x = log_gdp_per_cap, y = happiness_score)) +
  geom_point()

# Calculate correlation
cor(world_happiness$log_gdp_per_cap, world_happiness$happiness_score)


# The relationship between GDP per capita and happiness became more linear by applying a log transformation. 
# Log transformations are great to use on variables with a skewed distribution, such as GDP.


# Scatterplot of grams_sugar_per_day and happiness_score
ggplot(world_happiness, aes(x = grams_sugar_per_day, y = happiness_score)) + geom_point()

# Correlation between grams_sugar_per_day and happiness_score
cor(world_happiness$grams_sugar_per_day, world_happiness$happiness_score)


# Based on this data, Increased sugar consumption is associated with a higher happiness score.

















