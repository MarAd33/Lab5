AP=AirPassengers
AP1 = unclass(AP)
years=c('0')

i=0
for (item in 1948:1960)
{
  years[i]=item
  i=i+1
}


A=matrix(AP1,nrow=12,ncol=12,byrow=TRUE)
class(A)

Months_data=apply(A, 2, sum)
Years_data=apply(A, 1, sum)
print ("The most profitable month of the 12 years")
month.abb[which.max(Months_data)]
print("with the revenue of")
print(max(Months_data))
print ("The most profitable year of the 12 years")
years[which.max(Years_data)]
print("with the revenue of")
print(max(Years_data))
print("company's growth over the 12 year period")
plot(AP.matrix,xlab="Date", ylab = "Passenger numbers (1000's)",main="Air Passenger numbers from 1949 to 1961")


price=c(8000)
for(i in 2:12)
{
  price[i]=price[i-1]+price[i-1]*(10/100)
}

out <- matrix(NA, nrow=12, ncol=12)
for(i in 1:12)
{
  
   out[i,]<-c(A[i,]*price[i])
}
out
Months_data=apply(out, 2, sum)
Years_data=apply(out, 1, sum)
print ("The highest revenue month of the 12 years")
month.abb[which.max(Months_data)]
print("with the revenue of")
print(max(Months_data))
print ("The highest revenue year of the 12 years")
years[which.max(Years_data)]
print("with the revenue of")
print(max(Years_data))
print("Total revenue of the 12 years")
print(sum(Years_data))
months_of_year=list(c(0,0))
for( i in 1:12)
{
  vec=which(A[i,] == max(A[i,]))
  print("The most travelled months of")
  print(years[i])
  print("are")
  print(month.abb[vec])
}

