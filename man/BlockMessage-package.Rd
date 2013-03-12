\name{BlockMessage-package}
\alias{BlockMessage-package}
\alias{BlockMessage}
\docType{package}
\title{Messages in 8 by 8 block letters}
\description{Creates strings that show a text message in 8 by 8 block letters}
\details{
\tabular{ll}{
  Package: \tab BlockMessage\cr
  Type: \tab Package\cr
  Version: \tab 1.0\cr
  Date: \tab 2013-03-12\cr
  License: \tab GPL-2\cr
}
blockMessage is called with a text message which is converted into a strings of block letters

}
\author{
Elliot Noma, Aliona Manvae

Maintainer: Elliot Noma <noma@garrettassetmanagement.com>
}
\references{
http://roznerd.blogspot.com/ describes the coding scheme for the letters
}
\keyword{ package }
\examples{
  cat(paste(blockMessage("Finishing 15:01:45"), collapse="\n"), "\n")
  cat("\n", paste(paste(rep(" ", 20), collapse=""), 
      blockMessage("Finishing 15:01:45", portrait=FALSE, repeats=3, rotate=180, width=6),
  	  collapse="\n"), "\n")
  cat(paste(c(blockMessage("Finishing"),"\n",blockMessage("15:01:45")), collapse="\n"), "\n")
}
