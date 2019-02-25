#Define the dataframes
#df1-left dataframe
df1 = data.frame(CustId = c(1:6),Product = c(rep("TV",3),rep("Radio",3)))
df1

#df2-right dataframe
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df2

#Return only the rows in which the left table have match.
merge(x = df1,y = df2,by = "CustId")

#Returns all rows from both tables, join records from the left which 
#have matching keys in the right table.
merge(x = df1,y = df2,all = TRUE)

#Return all rows from the left table, and any rows with matching keys 
#from the right table

merge(x = df1, y = df2, by = "CustId", all.x = TRUE)

#Return all rows from the right table, and any rows with matching keys 
#from the left table
merge(x = df1, y = df2,by = "CustId", all.y = TRUE)

#Return a long format of the datasets without matching key.
merge(x = df1,y = df2,by = NULL)


library(dplyr)
#Keep only observations in df1 that match in df2.
semi_join(df1,df2)

#Drop all observations in df1 that match in df2.
anti_join(df1,df2,by = "CustId")
