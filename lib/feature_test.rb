require "./lib/plane"
require "./lib/airport"

plane = Plane.new
airport = Airport.new


airport.land(plane)
plane.land
plane.landed?
airport.takeoff(plane)
