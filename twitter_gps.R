load.gps <- function(filname){
  #load GPS datafile return dataframe in time sereis format
  numCols <- max(count.fields(filname))
  df <- read.table(filname)[1:2]
  return (df)
}

dec.2.timestamp <- function(ts){
  #convert decimalyears to timestamp in dataframe
  h<-c()
  for (data in c(ts[1])){h<-append(h,date_decimal(data))}
  ts[1]<-h
  return (ts) 
}

#run twitter anomoly
run.twitter <- function(ts){
  #
}
#subtract points
remove.Outliers <- function(ts,outlier){
 ts2 <-ts[ ! ts[1] %in% outlier[1], ]
 return (ts2)
}

new.TS.2.file <- function(ts,fname){
  #write outlier less file to new file 
  write.table(ts,file=fname)
}

