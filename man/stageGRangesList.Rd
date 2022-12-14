% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stageGRangesList.R
\name{stageObject,GRangesList-method}
\alias{stageObject,GRangesList-method}
\title{Stage a GRangesList object}
\usage{
\S4method{stageObject}{GRangesList}(
  x,
  dir,
  path,
  child = FALSE,
  group.name = "grouping",
  mcols.name = "mcols",
  ranges.name = "ranges",
  meta.name = "other",
  ranges.args = list()
)
}
\arguments{
\item{x}{A \linkS4class{GRangesList} object or one of its subclasses.}

\item{dir}{String containing the path to the staging directory.}

\item{path}{String containing a prefix of the relative path inside \code{dir} where \code{x} is to be saved.
The actual path used to save \code{x} may include additional components, see Details.}

\item{child}{Logical scalar indicating whether \code{x} is a child of a larger object.}

\item{group.name}{String containing the name of the file inside \code{path} to save the GRangesList groupings.}

\item{mcols.name}{String specifying the name of the directory inside \code{path} to save \code{\link{mcols}(x)}.
If \code{NULL}, per-element metadata is not saved.}

\item{ranges.name}{String containing the name of the directory inside \code{path} to save the underlying GRanges (i.e., \code{\link{unlist}(x)}).}

\item{meta.name}{String specifying the name of the directory inside \code{path} to save \code{\link{metadata}(x)}.
If \code{NULL}, object metadata is not saved.}

\item{ranges.args}{Further arguments to pass to the \code{\link{stageObject}} method when saving the underlying GRanges.}
}
\value{
A named list containing the metadata for \code{x}.
The contents of \code{x} are saved into various files inside \code{file.path(dir, path)}.
}
\description{
Stage a \linkS4class{GRangesList} object containing groups of genomic intervals.
}
\details{
Setting \code{mcols.name=NULL} and \code{meta.name=NULL} will skip the staging of the \code{\link{mcols}} and \code{\link{metadata}}.
This is primarily useful for use in staging RangedSummarizedExperiments where the \code{\link{mcols}} have already been saved as part of the \code{rowData}.
}
\examples{
gr <- GRanges("chrA", IRanges(1:100, width=1))
grl <- split(gr, rep(1:3, length.out=length(gr)))

tmp <- tempfile()
dir.create(tmp)
stageObject(grl, tmp, path="GRL")
list.files(tmp, recursive=TRUE)

}
\author{
Aaron Lun
}
