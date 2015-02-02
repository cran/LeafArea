\name{file.manage.list}
\alias{file.manage.list}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
File management
}
\description{
File management function for the results. The output file contains the identify of the image in the first column and area (cm2) of the image in the second column.
}
\usage{
file.manage.list(path, prefex = "\\\\.|-")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{path}{
Path to the target directory
}
  \item{prefex}{
Regular expression to manage file names}
}

\value{
A list of data frame of leaf area for each image
    \item{area}{
    Leaf area of the image (cm2)}
}

\author{
Masatoshi Katabuchi <mattocci27@gmail.com>}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{auto.run}}
\code{\link{file.manage}}
 }
\examples{
data(leafdata)
tf <- paste(tempdir(),"/",sep="")
for (i in 1:6){
	write.table(leafdata[[i]],paste(tf,names(leafdata)[i],sep=""),sep="\t")
}

file.manage.list(tf)

unlink(list.files(tf))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

