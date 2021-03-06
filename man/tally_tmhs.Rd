% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tally_tmhs.R
\name{tally_tmhs}
\alias{tally_tmhs}
\title{Count the number of transmembrane helices in a topology}
\usage{
tally_tmhs(topology)
}
\arguments{
\item{topology}{a tibble with two columns,
named \code{name} for a protein's name and \code{topology},
for its predicted topology (e.g. \code{ooooMMMMiiiii}).}
}
\value{
a \link[tibble]{tibble} with the number of
TMHs per protein
}
\description{
Count the number of transmembrane helices in a topology
}
\examples{
if (is_tmhmm_installed()) {
  tally_tmhs(
    locatome_to_df(
      c(
        ">my_protein",
        "FASTASTIC"
      )
    )
  )
}
}
