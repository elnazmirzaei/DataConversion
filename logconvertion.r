#############################################
##calculate log of data without using "for"##
#############################################

#read data
myData<- read.table(file="Rec/AllGenes10x.txt", header=TRUE, sep="\t")
ratings <- read.csv(file="Rec/data-Allgenes.csv", header=TRUE)


#preproccessing myData
length(myData[1,]) #22185
x=myData[,1]
 myData=myData[,-1]
 myData=(data.matrix(data.frame(myData)))
rownames(myData)=x
myData=t(myData)

#preprocessing ratings
ratings=ratings[,-1]

#calculate log base 2 of data 
myData2=log(myData+1,2)
ratings2=ratings
ratings2[,3]=log(ratings[,3]+1,2)

#write data into csv files
write.csv(myData2,file="Rec/AllGenes10x-loged.csv")
write.csv(ratings2,file="Rec/data-Allgenes-loged.csv")
