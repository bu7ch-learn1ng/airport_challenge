require "./lib/plane"
require "./lib/airport"
require "./lib/weather"

plane = Plane.new
airport = Airport.new
weather = Weather.new

airport.land(plane)
weather.report
airport.takeoff(plane)
