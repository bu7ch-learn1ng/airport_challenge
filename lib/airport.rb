require_relative 'plane'
require_relative 'weather'


class Airport
  DEFAULT_CAPACITY = 10
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land(plane, weather)
    raise 'Unable to land. Weather is stormy.' if weather == true
    raise 'Airport at capacity.' if full?
    plane.land
    @planes.push(plane)
  end

  def takeoff(plane, weather)
    raise 'Unable to takeoff. Weather is stormy.' if weather == true
    plane.takeoff
    @planes.pop
  end

  private
  attr_reader :plane

  def full?
    @planes.count >= capacity
  end
end
