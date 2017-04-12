require "weather"


describe Stormy_Weather do
  it { is_expected.to respond_to :report }

  it "#report - sets generate either true or false" do
    expect(subject.report).to eq(true).or eq(false)
  end
end
