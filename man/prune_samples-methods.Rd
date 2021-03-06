\docType{methods}
\name{prune_samples}
\alias{prune_samples}
\alias{prune_samples,character,otu_table-method}
\alias{prune_samples,character,phyloseq-method}
\alias{prune_samples,character,sample_data-method}
\alias{prune_samples,logical,ANY-method}
\title{Define a subset of samples to keep in a phyloseq object.}
\usage{
  prune_samples(samples, x)
}
\arguments{
  \item{samples}{(Required). A character vector of the
  samples in object x that you want to keep -- OR
  alternatively -- a logical vector where the kept samples
  are TRUE, and length is equal to the number of samples in
  object x. If \code{samples} is a named logical, the
  samples retained is based on those names. Make sure they
  are compatible with the \code{sample_names} of the object
  you are modifying (\code{x}).}

  \item{x}{A phyloseq object.}
}
\value{
  The class of the object returned by \code{prune_samples}
  matches the class of the phyloseq object, \code{x}.
}
\description{
  An S4 Generic method for pruning/filtering unwanted
  samples by defining those you want to keep.
}
\examples{
data(GlobalPatterns)
# Subset to just the Chlamydiae phylum.
GP.chl <- subset_taxa(GlobalPatterns, Phylum=="Chlamydiae")
# Remove the samples that have less than 20 total reads from Chlamydiae
GP.chl <- prune_samples(sample_sums(GP.chl)>=20, GP.chl)
# (p <- plot_tree(GP.chl, color="SampleType", shape="Family", label.tips="Genus", size="abundance"))
}
\seealso{
  \code{\link{subset_samples}}
}

