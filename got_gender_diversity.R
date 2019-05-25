library(corrplot)
library(dplyr)
library(lemon)

got_diversity <- read.csv(("got.csv"), header = T, sep = ";") 

str(got_diversity)
summary(got_diversity)

attach(got_diversity)

# Factors
house <- factor(House,
                levels = 1:13,
                labels = c("Stark", "Targaryen", "Baratheon", "Lannister", "Night's Watch", " Greyjoy", "Tyrell", "Wildlings", "Martell", "Frey", "Tully", "White Walkers", "Dothraki"))

gender <- factor(Gender,
                 levels = 1:3,
                 labels = c("Female", "Male", "Other"))

df <- data.frame(Name, house, gender)
knit_print.data.frame <- lemon_print
df

# Frequency of characters according to their houses
house_freq <- table(house)
house_freq
house_freq %>% barplot(col = c("grey48", "red", "brown", "darkgoldenrod4",
                               "black", "khaki", "green4", "lightblue",
                               "orange", "plum", "firebrick", "turquoise1", "sienna"),
                       axes = T,
                       cex.names = .70, las = 2)

house_perc <- prop.table(house_freq) %>% round(2)
house_perc 

# Frequency of characters according to their gender
gender_freq <- table(gender)
gender_freq
gender_freq %>% barplot(col= rainbow(3))
gender_perc <- prop.table(gender_freq) %>% round(2)
gender_perc

# Cross tabulation table
house_by_gender <- table(house, gender)
house_by_gender

# Frequency of house regardless of gender
margin.table(house_by_gender, 1)
prop.table(house_by_gender, 1) %>% round(2)

# Frequency of gender regardless oh house
margin.table(house_by_gender, 2)
prop.table(house_by_gender, 2) %>% round(2)

# Chi-square test
chisq <- chisq.test(house_by_gender)
chisq # Very significant

# Observed values vs Expected values
obs_val <- chisq$observed %>% round(2)
obs_val # This is the same as 'house_by_gender'
prop.table(obs_val) %>% round(2) # This is the same as 'prop.table(house_by_gender)'

exp_val <- chisq$expected %>% round(2)
exp_val # Ditribution we would expect if there was no relationship between 'house' and 'gender'
prop.table(exp_val) %>% round(2)

# Pearson residuals to analyze the weight of each cell to the chi-square score
pearson_res <- chisq$residuals %>% round(3)
pearson_res

# Correlation plot
corrplot(pearson_res, is.cor = F,
         col= c("black", "white"), bg = "lightblue", tl.col = "black",
         cl.pos = "n", tl.cex = .8, mar = c(1,1,1,1))
