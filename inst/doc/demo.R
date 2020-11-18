## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(tmhmm)

## ----error=TRUE---------------------------------------------------------------
check_tmhmm_installation()

## -----------------------------------------------------------------------------
fasta_filename <- system.file("extdata", "tmhmm.fasta", package = "tmhmm")
cat(readLines(fasta_filename), sep = "\n")

## -----------------------------------------------------------------------------
if (is_tmhmm_installed()) {
  locatome <- run_tmhmm(fasta_filename)
  cat(locatome, sep = "\n")
}

