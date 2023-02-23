


percentOutplanted <- as_tibble(cbind(percentOutplantedB3,
                                     percentOutplantedQ9, 
                                     percentOutplantedR8,
                                     percentOutplantedS8, 
                                     percentOutplantedU7,
                                     percentOutplantedX1))
percentOutplanted <- reshape2::melt(percentOutplanted, value.name = "percentOutplanted")
percentOutplanted <- percentOutplanted %>% 
  tidyr::separate(variable, into = c("variable", "site"), sep = 17) %>% 
  select(site, percentOutplanted)



sites <- as.tibble(sites)
sites <- as.tibble(levels(threeYearData$site)) %>% 
  rename(site = value)

sites$percentOutplanted <- c(percentOutplantedB3,
                             percentOutplantedQ9,
                             percentOutplantedR8,
                             percentOutplantedS8,
                             percentOutplantedU7,
                             percentOutplantedX1)