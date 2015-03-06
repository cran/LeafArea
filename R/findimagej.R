##works in Mac
findimagej <- function(ostype = .Platform$OS.type){

	if (ostype == "windows"){

		if(file.exists("\\Program Files\\ImageJ\\ImageJ.exe")!=T) {
			warning("ImageJ was not found in the common install locations on your system; Specify the path to ImageJ or try installing ImageJ to C:\\Program Files\\ or specify the path to ImageJ")
			return("ImageJ not found")}	else return("C:\\Program Files\\ImageJ\\")
		} else {
			unix.check <-Sys.info()["sysname"]
		if(unix.check=="Linux") {
			warning("Specify the path to ImageJ")	
		return("ImageJ not found")} else {

		if(file.exists("/Applications/ImageJ/ImageJ64.app")!=T){
		warning("ImageJ was not found in the common install locations on your system; try installing ImageJ to /Applications/ImageJ/ or specify the path to ImageJ")	
		return("ImageJ not found")
		} else return("/Applications/ImageJ/")			
		}
			}

}







