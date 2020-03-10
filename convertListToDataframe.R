# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Converting ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ List -> Data Frame ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


#1) make sample 'List of lists'
row1 <- list("id"=1, "date"="20200106", "code"=list(1,4,6))
row2 <- list("id"=2, "date"="20200109", "code"=list(1,4,7,8))
list <- list(row1, row2)


#2) convert 'List of lists' to 'Data Frame'
df <- data.frame()

for(sublist in list) {
  
  #2-1) convert values to character
  id <- as.character(sublist$id)
  date <- sublist$date
  code <- paste(sublist$code, collapse = ",")
  
  print(paste("[id][", id, "] ", class(sublist$id), " -> ", class(id)))
  print(paste("[date][", date, "] ", class(sublist$date), " -> ", class(date)))
  print(paste("[code][", code, "] ", class(sublist$code), " -> ", class(code)))
  
  #2-2) make sub data frame
  tempRow <- data.frame(id, date, code)
  
  #2-3) rbind to df
  df <- rbind(df, tempRow)
}


#3) check result
print(df)