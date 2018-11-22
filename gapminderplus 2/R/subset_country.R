#' Subset a country using a set of inputs via the console
#'
#' @description
#' Type the country or countries in the console to subset the gapminder dataset more interactively.
#' @usage
#' subset_country()
#'
#' @return A list of country that is subseted from the gapminder2 dataset for subset_country
#' @return A list of country that is subseted from the gapminder2 dataset for subset_country2
#'
#' @details
#' Provide a list in the console to subset the gapminder dataset more interactively.
#' @examples
#'#' subset_country()
#'#' Console view
#'#'1: Malaysia
#'#'2:            #enter empty prompt
#'#'  Read 1 item
#'#'country continent year lifeExp      pop gdpPercap meanSchool
#'#'1 Malaysia      Asia 1972  63.010 11441462  2849.095        5.7
#'#'2 Malaysia      Asia 1977  65.256 12845381  3827.922        6.6
#'#'3 Malaysia      Asia 1982  68.000 14441916  4920.356        7.4
#'#'4 Malaysia      Asia 1987  69.500 16331785  5249.803        8.2
#'#'5 Malaysia      Asia 1992  70.693 18319502  7277.913        8.9
#'#'6 Malaysia      Asia 1997  71.938 20476091 10132.910        9.6
#'#'7 Malaysia      Asia 2002  73.044 22662365 10206.978       10.2
#'#'8 Malaysia      Asia 2007  74.241 24821286 12451.656       10.8
#'
#'#' subset_country2()
#' @import dplyr
#' @import rlang
#' @import tidyr
#'
#' @rdname subset_country
#' @export

subset_country <- function() {

  x <- scan(what = "character")  #  The prompt that request the package names

results <- dplyr::filter(gapminderplus::gapminder2, gapminder2$country %in% x)
  return(results)

}

#' @rdname subset_country
#' @export

subset_country2 <- function() {

  x <- scan(what = "character")  #  The prompt that request the package names

  results <- dplyr::filter(gapminderplus::gapminder3, gapminder3$country %in% x)
  return(results)

}

