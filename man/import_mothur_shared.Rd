\name{import_mothur_shared}
\alias{import_mothur_shared}
\title{Import mothur shared file and return an otu_table}
\usage{
  import_mothur_shared(mothur_shared_file, cutoff = NULL)
}
\arguments{
  \item{mothur_shared_file}{(Required). A
  \href{http://www.mothur.org/wiki/Shared_file}{shared
  file} produced by \emph{mothur}.}
}
\value{
  An \code{\link{otu_table}} object.
}
\description{
  Import mothur shared file and return an otu_table
}
\seealso{
  \code{\link{import_mothur}}
}
\keyword{internal}

