% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-template.R
\name{get_template}
\alias{get_template}
\title{Get metadata template keys}
\usage{
get_template(id = NA, syn, synID = NA, ...)
}
\arguments{
\item{id}{The id of JSON metadata schema registered in Synapse or Synapse ID
of an excel or csv file containing a metadata template. Or a filepath or URL
to a json schema.}

\item{syn}{Synapse client object}

\item{synID}{Synapse ID of an excel or csv file containing a metadata
template}

\item{...}{Additional arguments passed to syn$get()}
}
\value{
Character vector of template column names
}
\description{
Get the keys from a metadata template stored as an excel or csv
or registered as a JSON schema in Synapse.
}
\examples{
\dontrun{
syn <- synapse$Synapse()
syn$login()
get_template(synID = "syn12973252", syn = syn)
get_template(id = "syn12973252", syn = syn)
}
}
