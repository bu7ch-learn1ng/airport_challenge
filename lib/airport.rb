require_relative 'plane'
require_relative 'weather'


class Airport
  def initialize
    @planes = []
    @stormy_weather = false
  end

  def land(plane)
    plan.land
    @planes.push(plane)
  end

  def takeoff(plane)
    @stormy_weather = Stormy_Weather.new.report
    raise 'Unable to takeoff. Weather is stormy.' if @stormy_weather == true
    plane.takeoff
    @planes.pop
  end
end
