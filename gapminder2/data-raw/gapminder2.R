
{
gapminder <- read.delim("./data-raw/gapminder.tsv", sep = "\t", header = TRUE, check.names = FALSE)

gapminder_school_filtered <- read.csv("./data-raw/Mean_years_school_25_34.csv", header = TRUE, check.names = FALSE) %>%
  dplyr::rename(country = "Row Labels") %>%
  dplyr::filter(country %in% gapminder$country)

cntry <- unique(gapminder$country)[unique(gapminder$country) %in% gapminder_school_filtered$country]

gpmd_cont <- gapminder %>%
  dplyr::filter(country %in% cntry) %>%
  subset(!duplicated(country)) %>%
  dplyr::select("country","continent")

gapminder_tidyschool<- gapminder_school_filtered %>%
  dplyr::select("country",as.character(unique(gapminder$year)[-c(1:4)])) %>%
  dplyr::mutate(continent = gpmd_cont$continent) %>%
  tidyr::gather(year, meanSchool, -c("country", "continent"))

gapminder_tidyschool$year <- as.integer(gapminder_tidyschool$year)
gapminder2 <- dplyr::inner_join(gapminder, gapminder_tidyschool)

usethis::use_data(gapminder2)


gapminder2_malaysia <-
  gapminder2 %>%
  dplyr::filter(country == "Malaysia")

usethis::use_data(gapminder2_malaysia)
}

