source("twitter_gps.R")
library(AnomalyDetection)

fname<-"/Users/radar/SSE/march_3_2017/TsereisCR/GRZA.lat" 
ts = load.gps(fname)
ts = dec.2.timestamp(ts)
res = AnomalyDetectionTs(ts, max_anoms=0.2, direction='both',longterm = TRUE,piecewise_median_period_weeks = 20,alpha=0.5, plot=TRUE)
res$plot
ts2 = remove.Outliers(ts,res)
new.TS.2.file(ts2,'test.txt')