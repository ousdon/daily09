USAboundaries::us_states()

data = USAboundaries::us_states() %>%
  filter(!state_name %in% c("Puerto Rico", "Alaska", "Hawaii"))

usa_state = data$geometry
(state = st_combine(usa_state) %>%
    st_cast("MULTILINESTRING"))

plot(state)

usa_continental = data$geometry
(state_ml = st_union(usa_continental) %>%
    st_cast("MULTILINESTRING"))

plot(state_ml)