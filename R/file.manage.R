file.manage <-
function(path,prefex="\\.|-"){
file.list<-list.files(path)
file.list <- file.list[grep(".txt$",file.list)]
	if (length(file.list[-grep("macro|bat",file.list)]!=0)) file.list <- file.list[-grep("macro|bat",file.list)]


size<-length(0)
file.name<-length(0)

for (i in 1:length(file.list))
{
data<-read.delim(paste(path,file.list[i],sep=""))
size[i]<-sum(data$Area)
file.name[i]<-paste(file.list[i])
}
res <- data.frame(file.name, size)

res$file.name <- factor(sapply(strsplit(as.character(res$file.name), prefex), "[",1))
res2 <- aggregate(res["size"],res["file.name"],sum)
res2 <- res2[sort.list(res2$file.name),]
names(res2) <- c("sample","total.leaf.area")
return(res2)
}
