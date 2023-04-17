library(forcats)
gss_cat %>%
  count(race)
ggplot(gss_cat, aes(race)) +
  geom_bar()
