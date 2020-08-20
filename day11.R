cities = readr::read_csv("~/Github/geog176a-summer-2020-lab1/uscities.csv") %>%
  
  st_as_sf(coords = c("lng", "lat"), crs = 4326) %>% 
  filter(city %in% c("Santa Barbara", "Walnut"))

st_distance(cities)

st_distance(st_transform(cities, 5070))

st_distance(st_transform(cities, '+proj=eqdc +lat_0=40 +lon_0=-96 +lat_1=20 +lat_2=60 +x_0=0 +y_0=0 +datum=NAD83 +units=m +no_defs'

st_distance(cities)

st_distance(cities) %>%
  set_units("km") %>%
  drop_units()




  

