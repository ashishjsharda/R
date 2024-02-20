library(leaflet)

# spatial data
data <- data.frame(
  City = c("New York", "Los Angeles", "Chicago"),
  Lat = c(40.7128, 34.0522, 41.8781),
  Long = c(-74.0060, -118.2437, -87.6298)
)

# Create a leaflet map
map <- leaflet(data) %>%
  addTiles() %>%
  addMarkers(~Long, ~Lat, popup = ~City)

# Display the map
map
