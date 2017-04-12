require "airport"
require "plane"
require "weather"

describe Airport do
  it { is_expected.to respond_to(:land).with(1).argument }
  it { is_expected.to respond_to(:takeoff).with(1).argument }

  describe '#takeoff' do
    let(:stormy_weather) { double :stormy_weather }
    it "raises an error on takeoff of weather is stormy" do
      plane = Plane.new
      weather = double :stormy_weather
      allow(weather).to receive(:report).and_return(true)
      expect { subject.takeoff(plane) }.to raise_error("Unable to takeoff. Weather is stormy.")
    end
  end
end
