require_relative 'plane'
require_relative 'weather'


class Airport
  def initialize
    @planes = []
  end

  def land(plane, weather)
    raise 'Unable to land. Weather is stormy.' if @stormy_weather == true
    plan.land
    @planes.push(plane)
  end

  def takeoff(plane, weather)
    raise 'Unable to takeoff. Weather is stormy.' if @stormy_weather == true
    plane.takeoff
    @planes.pop
  end
end
