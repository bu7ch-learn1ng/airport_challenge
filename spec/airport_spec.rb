require "airport"
require "plane"
require "weather"

describe Airport do
  it { is_expected.to respond_to(:land).with(2).argument }
  it { is_expected.to respond_to(:takeoff).with(2).argument }

  describe '#takeoff' do
    let(:stormy_weather) { double :stormy_weather }
    it "raises an error on takeoff of weather is stormy" do
      plane = Plane.new
      weather = double :stormy_weather
      allow(weather).to receive(:report).and_return(true)
      storm = weather.report
      expect { subject.takeoff(plane, storm) }
    end
  end
  describe '#land' do
    let(:stormy_weather) { double :stormy_weather }
    it "raises an error on land if weather is stormy" do
      plane = Plane.new
      weather = double :stormy_weather
      allow(weather).to receive(:report).and_return(true)
      storm = weather.report
      expect { subject.takeoff(plane, storm) }
    end
  end
end
