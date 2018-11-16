#' Subset a country using a set of inputs via the console
#'
#' @description
#' Type the country or countries in the console to subset the gapminder dataset more interactively.
#' @param Provide the country or countries without " " in the console after executing `subset_country()`.
#'
#' @return A list of country that is subseted from the gapminder2 dataset
#'
#' @details
#' Provide a list in the console to subset the gapminder dataset more interactively.
#' @examples
#' subset_country()
#'
#' @export

subset_country <- function() {

  x <- scan(what = "character")  #  The prompt that request the package names

results <- dplyr::filter(gapminder2::gapminder2, gapminder2$country %in% x)
  return(results)

}
