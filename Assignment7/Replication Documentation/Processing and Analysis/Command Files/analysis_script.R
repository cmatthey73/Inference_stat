#  Assignment 7.1 Open Science

# Analysis : Oscar- vs Razzie-nominated, any difference in IMDB ratings ?

# Libraries required
library(ggplot2)

# Load the data
path<-"g:/Documents/Christophe/Coursera/Inference_stat/Assignment7/Replication Documentation/Processing and Analysis/" 
      # set the global path to the files
dataIMB<-read.csv2(paste0(path, "Importable Data/data_IMDB.csv"), dec = ".", stringsAsFactors = F)
      # load the data (data_IMDB.csv)
dataIMB$Oscar<-factor(dataIMB$Oscar)
      # transform variable Oscar : factor with 2 levels,  1 if Oscar-nominated, 0 if Razzies-nominated 

# Analysis
test<-t.test(dataIMB$Rating[dataIMB$Oscar==1], dataIMB$Rating[dataIMB$Oscar==0], alternative="greater", var.equal=TRUE) #perform the t-test
test # test results
ggplot(data=dataIMB, aes(x=Rating, color=Oscar))+geom_density() # distribution of ratings
