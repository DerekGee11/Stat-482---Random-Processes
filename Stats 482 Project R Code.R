# Stat-482---Random-Processes
#Modeling the Process of Scoring Runs for the 2022 Major League Baseball World Series

#specifying parameters for Astros***
lambda<- 0.41
Ninnings<- 9

#defining states
N<- 0:Ninnings

#setting runs as vector 
runs<- c()

#setting initial value for runs 
runs[1]<- 0

#specifying seed 
set. seed (3452749)
for (i in 2:(Ninnings+1))
runs [i]‹- runs [i-1] + round((-1/lambda) *log(runif(1)) ,2)

#plotting trajectory
plot (runs, N, type = "n", xlab = "Number of innings", ylab = "Number of runs", panel.first = grid())

segments (runs[-length(runs)],N[-length(runs)], runs[-1]-0.07, N[-length(runs)], lwd=2, col="orange")
points(runs, N, pch=8, col="black")
points(runs[-1],N[-length(runs)],pch=8, col="blue")

runs[length(runs)]



#reading Astros*** data
Astros‹- read.csv(file = "Houston Astros Data.csv")

#computing interarrival (in runs)
int<- (Astros$G*9) #1 game = 9 innings
int<- int[-1] # removing first value

#plotting histogram
hist int, main="Runs per inning", xlab = "Interarrival innings", ylab = "Runs Frequency", col= "orange")

#binning interarrival times
binned.int<-as.factor(ifeise(int<25,"7", ifelse(int>=25 & int<50,"2", ifelse(int>=50 & int<100，"3"， "4"）））)

#computing observed frequencies#
obs<- table(binned.int)

#estimating mean for exponential distribution 
mean.est<- mean(int)

#computing expected frequencies
exp<- C(1:3)
exp[1]<- length(int) *(1-exp(-25/mean.est))
exp[2]<- length(int) *(exp(-25/mean.est)-exp(-50/mean.est)) 
exp[3]<- length(int) *(exp(-50/mean.est)-exp(-100/mean.est))
obs

#computing chi-squared statistic 
print(chi.sq<- sum((obs- exp)^2/exp))

#computing p-value
print(p.value<-1-pchisq(chi.sq, df=5))

###############################################################
#specifying parameters for phillies 
lambda<- 0.33
Ninnings<- 9

#defining states
N<- 0:Ninnings

#setting runs as vector 
runs‹- c()

#setting initial value for runs
runs[1］<-0

#specifying seed
set.seed(3452749)
for(i in 2:(Ninnings+1)) 
  runs[il‹- runs[i-1] + round((-1/lambda) *log(runif(1)) ,2)

#plotting trajectory
plot(rans, N, type = "n", xlab = "Number of innings", ylab = "Number of runs", panel.first = grid()) 
segments(runs[-length(runs)],N[-length(runs)], runs[-1]-0.07, N[-length(runs)], lwd=2, col="red")
points(runs, N, pch = 8, col = "black")
points(runs[-1], N[-length(runs)], pch = 8, col = "blue")

run[length(runs)]



#reading Phillies' data
phillies‹- read.csv(file = "Philadelphia_Phillies_Data.csv")

#computing interarrival (in runs)
int<- (Phillies$G*9)
int<- int[-1] # removing first value

#plotting histogram
hist(int, main = "Runs per inning", xlab = "Interarrival innings", ylab = "Runs Frequency", col= "red")

#binning interarrival times
binned.int<-as. factor (ifeise(int<25,"1", ifelse(int>=25 & int<50,"2", ifelse（int>=50 & int<100，"3"， "4"））) )

#estimating mean for exponential distribution 
mean.est<- mean(int)

#computing expected frequencies
exp<- c(1:3)
exp[1]<- length(int) *(1-exp(-25/mean.est))
exp[2]<- length(int) *(exp(-25/mean.est) -exp(-50/mean.est))
exp[3]<- length(int) *(exp(-55/mean.est) -exp(-100/mean.est))
obs

#computing chi-squared statistic 
print(chi.sq<- sum((obs- exp)^2/exp))|

#computing p-value
print(p.value<- 1-pchisa(chi.sq, df=5))



print(ch1.sq<- sum((obs- exp)^2/exp))



#computing p-value

print(p.value<- 1-pchisq(chi.sq, df=5))



#computing probability of same number of hits and homeruns

sum1<- 0
for(n in 0:48)
  sum1<- suml +(0.365*0.188*9^2)^n/(factorial(n))^2
print(p1<- sum1 exp (-(0. 365+0.188)*9))

sum2<- 0
for (n in 0:8)
  sum2<- sum2 + (0.037*0.05*9^2)^n/(factorial(n))^2
print(p2<- sum2 exp(-(0.037+0.05)*9))

p1*p2



print(p1<- sum1#exp(-(0.365+0.188) *9))

sum2<- 0

for(n in 0:8)
  sum2<- sum2 + (0.037:0.05÷912)In/(factorial(n))^2

print(p2<- sum2*exp(-(0.037+0.05) *9))

p1*p2
