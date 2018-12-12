###########################################
###Convert matrix to nonzero element(n*3)##
###########################################

##read data
A <- read.csv(file="data/yourData.csv", header=TRUE)


##get the nonzero elements IDs
z=which(A!=0,arr.ind = T)
tmp=c(1:length(z[,1]))

for(i in c(1:length(z[,1]))){
	tmp[i]=A[z[i,1],z[i,2]]
  }
 
data=cbind(z,tmp)
top=c("CellName","GeneName","Expression")
colnames(data)=top
