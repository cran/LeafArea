\name{findimagej}
\alias{findimagej}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Checking a path to ImageJ}
\description{
Check if ImageJ is installed in the correct directory.
}
\usage{
findimagej(ostype = .Platform$OS.type)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ostype}{
The Operating system types.
}
}

\value{
A path for ImageJ applicatoin. On unix this will always be "/Applications/ImageJ/". On Windows this will always be "C:\\Program Files\\ImageJ\\". 
}

\author{
Masatoshi Katabuchi <mattocci27@gmail.com>}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

