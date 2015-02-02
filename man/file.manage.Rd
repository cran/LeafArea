\name{file.manage}
\alias{file.manage}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
File management
}
\description{
File management function. The output file contains sample names in the first column and total leaf area of the sample (e.g., one individual plant or one ramet) in the second column.
}
\usage{
file.manage(path, prefex = "\\\\.|-")
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
A data frame of total leaf area for each sample
    \item{sample}{
    Name of sample}
    \item{total.leaf.area}{
    Total leaf area of the sample (cm2)}
}

\author{
Masatoshi Katabuchi <mattocci27@gmail.com>}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{auto.run}}
\code{\link{file.manage.list}}
}
\examples{
data(leafdata)
tf <- paste(tempdir(),"/",sep="")
for (i in 1:6){
	write.table(leafdata[[i]],paste(tf,names(leafdata)[i],sep=""),sep="\t")
}

file.manage(tf)

unlink(list.files(tf))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

