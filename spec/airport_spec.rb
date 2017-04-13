require "airport"
require "plane"
require "weather"

describe Airport do

  describe '#takeoff' do
    let(:stormy_weather) { double :stormy_weather }
    it "raises an error on takeoff of weather is stormy" do
      plane = Plane.new
      allow(stormy_weather).to receive(:report).and_return(true)
      storm = stormy_weather.report
      expect { subject.takeoff(plane, storm) }
    end
  end
  describe '#land' do
    let(:stormy_weather) { double :stormy_weather }
    it "raises an error on land if weather is stormy" do
      plane = Plane.new
      allow(stormy_weather).to receive(:report).and_return(true)
      storm = stormy_weather.report
      expect { subject.takeoff(plane, storm) }
    end
    it "raises an error on #land when airport is at capacity" do
      plane = Plane.new
      allow(stormy_weather).to receive(:report).and_return(false)
      weather =stormy_weather.report
      Airport::DEFAULT_CAPACITY.times {subject.land(plane, weather) }
      expect { subject.land(plane, weather) }
    end
  end
  describe 'initialization' do
    it 'has a variable capacity' do
      airport = Airport.new(50)
      plane = Plane.new
      50.times { airport.land(plane, false) }
      expect { airport.land(plane, false) }
    end
  end
end
