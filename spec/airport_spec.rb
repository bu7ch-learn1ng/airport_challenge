require "airport"

describe Airport do
  it { is_expected.to respond_to(:land).with(1).argument }
  it { is_expected.to respond_to(:land) }
  it { is_expected.to respond_to(:takeoff) }
end
