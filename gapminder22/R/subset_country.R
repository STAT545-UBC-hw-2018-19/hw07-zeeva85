#' Subset a country using a set of inputs
#'
#'  of country names to subset a the gapminder2 dataset
#' reciprocal/inverse of a vector.
#'
#' @param input the country or countries without "" in the console.

#'
#' @return A list of country that is subseted from the gapminder2 dataset:
#'
#'
#' @details
#' Provide a list in the console to subset the gapminder dataset more interactively.
#' @examples
#' subset_country()
#'
#' Console preview:
#'
#' > subset_country()
#' 1: Japan
#' 2: Malaysia
#' 3:
#'
#' @rdname subset_country
#' @export


subset_country <- function() {

  x <- scan(what = "character")  #  The prompt that request the package names

  results <-  gapminder2::gapminder2 %>%
    dplyr::filter(country %in% x)
  return(results)

}
