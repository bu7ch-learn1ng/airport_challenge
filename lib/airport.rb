class Airport
  def initialize
    @planes = []
  end
  def land(plane)
    @planes.push(plane)
  end
end
