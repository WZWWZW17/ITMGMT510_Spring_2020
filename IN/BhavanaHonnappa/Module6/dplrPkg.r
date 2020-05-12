library(dplyr)
library(nycflights13)

print(head(filter(flights, month==1,day==3,carrier=='AA')))

print(slice(flights, 1:10))

print(head(arrange(flights,year,month,day,sched_arr_time)))

print(head(select(flights,carrier)))

print(head(rename(flights,airline_month = month)))

print(distinct(select(flights,carrier)))

print(summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE)))

print(sample_n(flights,10))
