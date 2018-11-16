{
  require(dplyr)
  require(tidyr)
gapminder <- read.delim("./data-raw/gapminder.tsv", sep = "\t", header = TRUE, check.names = FALSE)

gapminder_school_filtered <- read.csv("./data-raw/Mean_years_school_25_34.csv", header = TRUE, check.names = FALSE)
gapminder_school_filtered <- dplyr::rename(gapminder_school_filtered, country = "Row Labels")
gapminder_school_filtered <- dplyr::filter(gapminder_school_filtered, country %in% gapminder$country)

cntry <- unique(gapminder$country)[unique(gapminder$country) %in% gapminder_school_filtered$country]


gpmd_cont <-  dplyr::filter(gapminder, country %in% cntry)
gpmd_cont <-  subset(gpmd_cont, !duplicated(country))
gpmd_cont <-  dplyr::select(gpmd_cont, "country","continent")

gapminder_tidyschool<-  dplyr::select(gapminder_school_filtered, "country",as.character(unique(gapminder$year)[-c(1:4)]))
gapminder_tidyschool<-  dplyr::mutate(gapminder_tidyschool, continent = gpmd_cont$continent)
gapminder_tidyschool<-  tidyr::gather(gapminder_tidyschool, year, meanSchool, -c("country", "continent"))

gapminder_tidyschool$year <- as.integer(gapminder_tidyschool$year)
gapminder2 <- dplyr::inner_join(gapminder, gapminder_tidyschool)

usethis::use_data(gapminder2)
}

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c("."), add = F)
