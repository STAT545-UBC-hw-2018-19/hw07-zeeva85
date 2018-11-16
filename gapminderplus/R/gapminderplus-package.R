#' gapminderplus: An data package and an extention of the existing gapminder dataset with subsetting by country capabilities
#'
#' One more column (mean age in school) is added onto the dataset and more on the way (check raw data), and subsetting capabilities
#'
#' @name gapminderplus
#' @author Seevasant Indran
#' @note Future package development will provide an inclusion of further subsets and plotting options
#' @keywords gapminder2
#' @keywords internal
"_PACKAGE"

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c("."))
