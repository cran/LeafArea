eximg <- function(){
os<-.Platform$OS.type
if (os == "windows") {
temp <- tempdir()
imagedir <- system.file("images",package="LeafArea")
imagedir <- gsub("/","\\\\",imagedir)


bat <- paste("cd ",imagedir,
            "\n copy A1-01.jpeg ",temp,"\\A1-01.jepg 
            copy A1-02.jpeg ",temp,"\\A1-02.jepg
            copy A2.jpeg ",temp,"\\A2.jepg
            copy A123-01.jpeg ",temp,"\\A123-01.jepg
            copy A123-02.jpeg ",temp,"\\A123-02.jepg
            copy A300-1.jpeg ",temp,"\\A300-2.jepg
            copy A300-2.jpeg ",temp,"\\A300-1.jepg"
,sep="")


tempbat <- paste(tempfile('bat'),".bat",sep="")

write(bat, file=tempbat)

shell(tempbat,intern=T)

unlink(tempbat)

return(paste(tempdir(),"\\",sep="")	)
} else {

return(file.path(system.file("images",package="LeafArea"),""))

}

}
