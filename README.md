# Assignment-4.1
assignments for Acadgild Data Science with R course
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table
For the above given data frames and tables perform the following operations:
1. Return only the rows in which the left table have match
2. Return all rows from both tables, join records from the left which have matching keys in the right table.

            #ASSIGNMET 4.1

        #Define the dataframes
        #df1-left dataframe
        df1 = data.frame(CustId = c(1:6),Product = c(rep("TV",3),rep("Radio",3)))
        df1

        #df2-right dataframe
        df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
        df2

        #innerjoin-Return only the rows in which the left table have match
        merge(x = df1,y = df2, by = "CustId")

        #outerjoin-Return all rows from both tables, join records from the left which have matching keys in the right table.
        merge(x = df1,y = df2, by = "CustId",all = TRUE)
       
       
![](assignment%204.1.PNG)
