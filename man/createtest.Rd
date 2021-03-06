% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createtest.R
\name{createtest}
\alias{createtest}
\title{Create a classification or regression test case}
\usage{
createtest(data, problem = c("classification", "regression"), dependent,
  data_transform = identity, train_index, method, name, description = "",
  ...)
}
\arguments{
\item{data}{A data frame}

\item{problem}{Either classification or regression. This influences how the algorithms are trained and what method is used to determine performance}

\item{dependent}{The dependent variable: the name of the column containing the prediction goal}

\item{data_transform}{A quoted function name that transforms the data. It should maintain it in data frame form and maintain the dependent variable.}

\item{train_index}{A vector of the rows to be used as training set. All other rows will form the holdout set}

\item{method}{The regression or classification method}

\item{name}{The name of the test. Printed in the test results}

\item{description}{Optional. A more elaborate description of the test}

\item{...}{Extra arguments used while running the test.}
}
\value{
An object of class 'classification' or 'regression', which holds the data, method, etc. for executing the test case.
}
\description{
Create a test, which can be run using any of the available runtest functions
}
\examples{
data(iris)
# A classification test
test <- createtest(data = iris, 
                  dependent = "Species",
                  problem = "classification",
                  method = "randomForest",
                  name = "An example classification test",
                  train_index = sample(150, 100)
)

# A regression test
test <- createtest(data = iris, 
                  dependent = "Sepal.Width",
                  problem = "regression",
                  method = "randomForest",
                  name = "An example regression test",
                  train_index = sample(150, 100)
)

}

