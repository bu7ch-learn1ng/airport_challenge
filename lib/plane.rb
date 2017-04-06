class Plane
  def initialize(landed=false)
    @landed = landed
  end
  def landed?
    @landed = true
  end
  def land
    @landed
  end
  def takeoff
    @landed = false
  end
end
