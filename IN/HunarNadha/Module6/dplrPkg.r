library(dplyr)
library(nycflights13)

#head will print only first 6 rows of the o/p
print(head(filter(flights,month==11,day==3,carrier=='AA')))

#print first 10 position
print(slice(flights, 1:10))

#arrange will order the columns in ascending order
print(head(arrange(flights,year,month,day,sched_arr_time)))

#Select certain column
print(head(select(flights,carrier)))

#Rename the month col to airline_month col
print(head(rename(flights,airline_month = month)))

#retruns the unique values in carrier col
print(distinct(select(flights,carrier)))

#print the average of air time col
print(summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE)))

#Print a randome sample of the data frame
print(sample_n(flights,10))

