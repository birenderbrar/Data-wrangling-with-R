#For data importing in R ,file has been read in google'spread sheat and link is retrived via sharing over web. 
myurl<-"https://docs.google.com/spreadsheets/d/e/2PACX-1vS62kcL3HLUYu_sLXibNzSzVBJxW9KSZjS4YgsktJFzh7mBIm40BJbqC_cxNTa_i68i-n-CcCLd0Cqu/pub?gid=0&single=true&output=csv"
pound<-read.csv(url(myurl))
pound
#Further data has been divided in two variables of sales which are dollars and pounds for the better analysis

colnames(pound)[colnames(pound)=="sales"] <- "sales_in pounds"
pound$sales_in_dollar<-pound[101:200,]
pound<-pound[1:100,]
pound

#With the help of regular expressions unwanted signs, commas and spaces has been deleted -
# - to get the clean and numeric data for better analysis
pound$sales_in_dollar = suppressWarnings((gsub("\\$", " ", pound$sales_in_dollar)))
pound$sales_in_dollar = suppressWarnings((gsub("\\,", " ", pound$sales_in_dollar)))
pound$sales_in_dollar = suppressWarnings((gsub("\\ ", "", pound$sales_in_dollar)))
pound$`sales_in pounds` = suppressWarnings((gsub("\\£", " ", pound$`sales_in pounds`)))
pound$`sales_in pounds`<-as.numeric(pound$`sales_in pounds`)
pound$sales_in_dollar<-as.numeric(pound$sales_in_dollar)
pound

##frequency of distribution of the sales in dollars and pounds has been found via histograms  
hist(pound$`sales_in pounds`)
hist(pound$sales_in_dollar)

##mean has been calculated for both variables 
mean(pound$`sales_in pounds`)
mean(pound$sales_in_dollar)

# Pound sale has been converted into USD by the converstion rate of 1 Pound == 1.35 USD.
pound$sales_converted_in_usd<-(pound$`sales_in pounds`*1.35)
pound
