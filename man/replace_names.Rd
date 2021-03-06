% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{replace_names}
\alias{replace_names}
\alias{replace_names.data.frame}
\alias{replace_names.default}
\alias{replace_names.matrix}
\title{Replace strings in the names of an object}
\usage{
replace_names(object, pattern, replacement, ...)

\method{replace_names}{default}(object, pattern = "\\\\.",
  replacement = " ", ...)

\method{replace_names}{data.frame}(object, pattern = "\\\\.",
  replacement = " ", replace_rownames = TRUE, replace_colnames = TRUE,
  ...)

\method{replace_names}{matrix}(object, pattern = "\\\\.", replacement = " ",
  replace_rownames = TRUE, replace_colnames = TRUE, ...)
}
\arguments{
\item{object}{Object of which the names are to be changed}

\item{pattern}{Pattern to look for, as defined by a POSIX regular expression}

\item{replacement}{Replacement string}

\item{...}{extra arguments to \code{replace_names}}

\item{replace_rownames}{Logical. Should row names be replaced?}

\item{replace_colnames}{Logical. Should column names be replaced?}
}
\description{
Replaces strings matching the pattern in the names of the object by the replacement. If applicable, both row and column names could be replaced. This function is a simple wrapper to \code{\link[stringr]{str_replace_all}}

Default method that replaces names(object)

Replaces row.names in the object, then dispatches to the default

Replace row.names and col.names in the object
}
\section{Methods (by class)}{
\itemize{
\item \code{default}: Replace names of an object

\item \code{data.frame}: Replace names of a data.frame

\item \code{matrix}: Replace names in a matrix
}}
\seealso{
\code{\link[stringr]{str_replace_all}}
}

