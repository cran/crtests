% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multitest.R
\name{multitest}
\alias{multitest}
\title{Create and run multiple instances of a test}
\usage{
multitest(data, dependent, problem = c("classification", "regression"),
  method, name, description = "", data_transform = identity,
  iterations = 10, holdout = 0.2, cross_validation = FALSE,
  preserve_distribution = FALSE)
}
\arguments{
\item{data}{A data frame}

\item{dependent}{The dependent variable: the name of the column containing the prediction goal}

\item{problem}{Either classification or regression. This influences how the algorithms are trained and what method is used to determine performance}

\item{method}{The regression or classification method}

\item{name}{The name of the test. Printed in the test results}

\item{description}{Optional. A more elaborate description of the test}

\item{data_transform}{A quoted function name that transforms the data. It should maintain it in data frame form and maintain the dependent variable.}

\item{iterations}{The number of times the test is to be performed. If cross-validation is used, this is the number of folds}

\item{holdout}{Sample testing only. The fraction of data to be used as holdout set}

\item{cross_validation}{Logical. Should cross validation be used?}

\item{preserve_distribution}{Logical, classification problems only. Should the distribution of factors in the dependent variable be as similar as possible between holdout and training sets?}
}
\value{
A list of class \code{'multitest_results_' + problem}, containing the test results of each iteration
}
\description{
Wrapper for creating multiple copies of a test and running them. This function supports cross validation and regular sampling. Cross validation splits the data into 'iterations' number of folds, and uses one fold as holdout, using every other fold as training set. This is repeated 'iteration's times, using every fold as holdout exactly once. Non-cross validation takes a random sample of size holdout * nrow(data) and uses it as holdout, the rest is used for training. This is repeated 'iteration's times. Test creation and execution is handled by \code{\link{create_and_run_test}}
}
\examples{
\dontrun{
library(crtests)
library(randomForest)
library(rpart)
library(caret)
library(stringr)

# A classification multitest
multitest(data = iris,
          dependent = "Species",
          problem = "classification",
          method = "randomForest",
          name = "An example classification multitest",
          iterations = 10,
          cross_validation = TRUE,
          preserve_distribution = TRUE
)

# A regression multitest
multitest(data = iris,
          dependent = "Sepal.Width",
          problem = "regression",
          method = "rpart",
          name = "An example regression multitest",
          iterations = 15,
          cross_validation = FALSE,
)

}
}

