\name{auto.run}
\alias{auto.run}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Automated leaf area analysis}
\description{
Analyzes leaf area in the target directory automatically, and returns data frame that contains sample names in the first column and total leaf area of the sample (e.g., one individual plant or one ramet) in the second column. 
}
\usage{
auto.run(path.imagej = NULL, set.memory = 8, set.directory, distance.pixel = 826,
 known.distance = 21, trim.pixel = 20, low.circ = 0, upper.circ = 1,
  low.size = 0.7, upper.size = "Infinity", prefex = "\\\\.|-",log=F,check.image=T)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{path.imagej}{
path to ImageJ. Deafult uses C:\\Program Files\\ImageJ\\ for Windows, and /Applications/ImageJ/ for Mac. Linux always needs to speficy the path to ImageJ.
}
  \item{set.memory}{
set memory (GB) for image analysis 
}
  \item{set.directory}{
set directory that contains leaf images. For example, ~/Desktop/images/, ..\\\\Desktop\\\\images\\\\...
}
  \item{distance.pixel}{
Number of pixels for the known distance
}
  \item{known.distance}{
Known distance (cm)
}
  \item{trim.pixel}{
Number of pixels removed from edges in the analysis
}
  \item{low.circ}{
Lower limit for circularity for the image analysis}
  \item{upper.circ}{
Upper limit for circularity for the image analysis}
  \item{low.size}{
Lower limit for size for the image analysis}
  \item{upper.size}{
Upper limit for size for the image analysis}
  \item{prefex}{
Regular expression  to manage file names
}
 \item{log}{
Should mean log of each sigle image kept? (defalt = FALSE)
}
 \item{check.image}{
Whether to disply analzed images by using imageJ software (defalt = TRUE). When you choose check.image = TRUE, press any keys to close imageJ.}
}

\value{
A data frame of total leaf area for each sample.\cr 

    \item{sample}{
    Name of sample}
    \item{total.leaf.area}{
    Total leaf area of the sample (cm2)}

If you choose log=T, auto.run function also returns a list of data frame of leaf area for each image.
    \item{area}{
    Area of the sample (cm2)}
}

\author{
Masatoshi Katabuchi <mattocci27@gmail.com>}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{file.manage}}
\code{\link{file.manage.list}}
\code{\link{eximg}} 
}
\examples{
# As long as ImageJ application is installed in the following directory,
# you do not have to specify the path to ImageJ
# /Applications/ImageJ/ <Mac>
# C:\Program Files\ImageJ\ <Windows>
# Linux always needs to specify the path to ImageJ. For example, path = "~/ImageJ/"

# the target directory that contains example image files
set.directory <- eximg()

# run without displaying analyzed images
auto.run(set.directory=set.directory, log=TRUE, check.image=FALSE)


set.directory <- eximg()
# run with displaying analyzed images. Press any keys when you finish cheking analyzed images."
auto.run(set.directory=set.directory, log=TRUE, check.image=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line


