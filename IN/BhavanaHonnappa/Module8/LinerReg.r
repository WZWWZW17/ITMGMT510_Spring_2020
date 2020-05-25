library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

df <- read.csv('student-mat.csv', header=TRUE, sep=';')

print(head(df))

#print(summary(df))

print(any(is.na(df)))

num.cols <- sapply(df, is.numeric)

cor.data<- cor(df[,num.cols])

#print(cor.data)
corrplot(cor.data, method='color')

print(ggplot(df, aes(x=G3)) + geom_histogram(bins =20, alpha=0.5, fill = 'blue') + theme_minimal())

