# load the dataset
new_df <- read.csv("Section6-Homework-Data.csv")

# explore the data
head(new_df)

colnames(new_df)

# change column names
colnames(new_df) <- c("WeekDay","Director","Genre","Title",
                      "Release","Studio","AdjGrossMillion",
                      "BudgetMillion","GrossMillion","IMDBRating",
                      "MovieRating","OverseasMillion","Overseas",
                      "profitMillion","Profit","RunTimeMin",
                      "USMillion","GrossUS")

filter1 <- new_df$Genre == "action" | new_df$Genre=='adventure' |
  new_df$Genre == "animation" | new_df$Genre=="comedy" | 
  new_df$Genre == "drama"


filter2 <- new_df$Studio=="Buena Vista Studios" |
  new_df1$Studio=="Fox" | new_df1$Studio=="Paramount Pictures"|
  new_df1$Studio=="Sony" | new_df1$Studio=="Universal" |
  new_df1$Studio=="WB"

mov <- new_df[filter1 & filter2]

a <- ggplot(data = new_df,aes(x=new_df2$Genre,y=new_df2$GrossUS,
                              colour=new_df2$Studio, 
                              size=new_df2$BudgetMillion))

a +geom_boxplot()
