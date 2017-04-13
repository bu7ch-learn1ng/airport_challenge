require "./lib/plane"
require "./lib/airport"
require "./lib/weather"

plane = Plane.new
airport = Airport.new
weather = Stormy_Weather.new.report

airport.land(plane)
