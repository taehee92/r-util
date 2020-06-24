# ■■■■■■■■■■■■■■■■■■■■■■■■■■ Arrange Data Frame by column ■■■■■■■■■■■■■■■■■■■■■■■■■■

install.packages("plyr")
library(plyr)


#1) check "Data Set" from R
dataList <- data(package = .packages(all.available = TRUE))
head(dataList$results)


#2) select sample data
df <- mtcars


#3) arrange rows by columns
cols <- colnames(df)
print(cols)

for(i in 1:length(cols)) {
  col = cols[i]
  print(paste0("[EXECUTE] Arrange By ", col, "..."))
  
  # arrange sample by "col"
  temp <- arrange(df, df[i])
  print(head(temp))
}