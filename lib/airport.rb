require_relative 'plane'
class Airport
  def initialize
    @planes = []
  end
  def land(plane)
    plan.land
    @planes.push(plane)
  end
end
