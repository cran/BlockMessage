\name{blockMessage}
\alias{blockMessage}
\title{Messages in 8 by 8 block letters}
\description{Creates strings that show a text message in 8 by 8 block letters}
\usage{
blockMessage(message, symbols = c("X"," "), font = NULL, font_names = NULL, 
  width = 7, asData = 0, portrait=TRUE, rotate=0, repeats=1)
}
\arguments{
  \item{message}{string containing the text message}
  \item{symbols}{The symbols that make up the dark and light spaces in the block letters}
  \item{font}{
  a matrix describing each letter. The shape of each letter is defined by the eight entries in each row. 
  Each entry corresponds to a column. Each two byte entry describes the dark and light spaces within the column. 
  The first byte describes the top 4 positions and the second byte describes the bottom 4 positions.}
  \item{font_names}{A vector containing the name for each row in the font matrix.}
  \item{width}{The number of columns (maximum=8) to use in each letter}
  \item{asData}{Indicates whether to return a matrix of dark and light symbols (asData=FALSE) 
  or to return a strings of characters that can be printed in either portrait or landscape format (asData=TRUE) }
  \item{portrait}{Indicates whether the strings should be in portrait (TRUE) or landscape (FALSE) mode }
  \item{rotate}{0 is the default orientation, 180 rotates the message 180 degrees}
  \item{repeats}{The number of times each row and column of symbols is repeated within each letter }
}
\details{For more information on the creation of the fonts see http://roznerd.blogspot.com/}
\references{http://roznerd.blogspot.com/}
\author{Elliot Noma, Aliona Manvae}
\examples{
  cat(paste(blockMessage("Finishing 15:01:45"), collapse="\n"), "\n")
  cat("\n", paste(paste(rep(" ", 20), collapse=""), 
      blockMessage("Finishing 15:01:45", portrait=FALSE, repeats=3, rotate=180, width=6),
  	  collapse="\n"), "\n")
  cat(paste(c(blockMessage("Finishing"),"\n",blockMessage("15:01:45")), collapse="\n"), "\n")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ block }
\keyword{ letter }
