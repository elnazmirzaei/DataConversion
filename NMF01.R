###########################
##NMF######################
###########################
#read Data
myData = read.csv(file="PathToYourFile", header=TRUE)


library(NMF)


#when you know the rank/number of clusters
myDataNMF=nmf((myData+1),10) # nmf(data,rank,method,seed)
CW <- basis(myDataNMF)
CH <- coef(myDataNMF)

write.csv(CW,file="myData-NMF-W.csv")
write.csv(CH,file="myData-H.csv")


#compare different ranks
myDataNMF=nmf((myData+1),1:20)

jpeg("myData-NMF-Rank.jpeg")
plot(myDataNMF)
dev.off()

jpeg("myData-NMF-Consensusmap.jpeg")
consensusmap(myDataNMF,annCol=myData, labCol=NA, labRow=NA)
dev.off()



