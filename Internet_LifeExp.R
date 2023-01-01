#The World Bank was very impressed with your deliverables on the previous assignment and they have a new project for you.

#You are required to produce a scatterplot depicting Life Expectancy (y-axis) and 
#Fertility Rate (x-axis) statistics by Country.

#The scatterplot needs to also be categorised by Countries’ Regions
#You have been supplied with data for 2 years: 1960 and 2013 and you are required
#to produce a visualisation for each of these years.

#Some data has been provided in a csv file, some - in R vectors. The csv file contains
#combined data for both years. All data manipulations have to be performed in R (not in excel)
#because this project may be audited at a later stage.

#You have also been requested to provide insights into how the two periods compare.


#loading the datasets

world_df <- read.csv("P2-Section5-Homework-Data.csv")

head(world_df)

world_df_1960 <- world_df[world_df$Year == 1960,]

head(world_df_1960)

world_df_2013 <- world_df[world_df$Year == 2013,]

head(world_df_2013)


#creating the dataframe

world_vec <- data.frame(Country_Code,Life_Expectancy_At_Birth_1960,Life_Expectancy_At_Birth_2013)

head(world_vec)

#changing the column names

colnames(world_vec) <- c("Code","Life_Exp_1960","Life_Exp_2013")

head(world_vec)


#merging the 2 dataframes

merged_df_1960 <- merge(world_df_1960,world_vec,by.x = "Country.Code",by.y = "Code")

head(merged_df_1960)

merged_df_2013 <- merge(world_df_2013,world_vec,by.x = "Country.Code",by.y = "Code")

head(merged_df_2013)

#visualizing merged_df

qplot(data = merged_df_1960, x=Fertility.Rate, y=Life_Exp_1960,color=Region,size=I(2))

qplot(data = merged_df_2013, x=Fertility.Rate, y=Life_Exp_2013,color=Region,size=I(2))
