require 'plane'
# require 'airport'

describe Plane do
  # it { is_expected.to respond_to }
  it { is_expected.to respond_to(:land).with(1).argument }
end
