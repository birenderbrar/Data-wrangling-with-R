


   DATA WRANGLING
         NOTE:- Data wrangling techniques are used on mtcar dataset ,which is an predefined data in          R environment

1.	All variables, except “hp” is printed using select function.



2.	Variables mpg ,hp, vs, am and gear have been printed using select command.

3.	Object Cars_m_h has been created and names of mpg and hp also been respectively changed to miles_per_gallon and horse_power.
 
 



4.	Column names of cars_m_h have been changed from
‘miles_per_gallon’, and ‘horse_power’ to ‘mpg’ and ‘hp’
respectively.



5.	Object Cars_m_h_s has been created using slice function, which contains rows 10 to 35 of Cars_m_h.


 
6.	Cars_m_h_s is printed without any duplicate. Using “duplicated”
function.

7.	All the observations which have mpg>20 and hp>100 of Cars_m_h_s	have been printed below.


8.	“Lotus Europa” car has been selected and shown below from the mtcars data with the application of subset and knowledge about data set.



9.	Various operation has been applied on the untidy given data , to make it tidy enough for the visualization and extract the valuable facts and calculations, which are mentioned below in the series.
 
A.	For data importing in R ,file has been read in google'spread sheat and link is retrived via sharing over web.
 
B.	Further data has been divided in two variables of sales which are dollars and pounds for the better analysis
 
C.	With the help of regular expressions unwanted signs, commas and spaces has been deleted to get the clean and numeric data for better analysis.
 

 

D.	frequency of distribution of the sales in dollars and pounds has been found via histograms
 

 

E.	Mean has been calculated for both variables.


 
F.	Pound sale has been converted into USD by the converstion rate of 1 Pound == 1.35 USD.
 
