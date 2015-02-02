
findimagej <- function(ostype = .Platform$OS.type){

	if (ostype == "windows"){
		s <- suppressWarnings(shell("cd C:\\Program Files\\ImageJ\\", intern=T))

		if(length(s)!=0) {warning("ImageJ was not found in the common install locations on your system; Specify the path to ImageJ or try installing ImageJ to C:\\Program Files\\")

		return("ImageJ not found")}	else return("C:\\Program Files\\ImageJ\\")
		} else {
			unix.check <-Sys.info()["sysname"]
		if(unix.check=="Linux") {
			warning("Specify the path to ImageJ")	
		return("ImageJ not found")} else {
		s <- suppressWarnings(system("cd /Applications/ImageJ/", intern=F))
		
		if(s!=0){
		warning("ImageJ was not found in the common install locations on your system; try installing ImageJ to /Applications/ImageJ/")	
		return("ImageJ not found")
		} else return("/Applications/ImageJ/")			
		}

			}

}

