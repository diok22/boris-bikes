require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new

  it "creating an instance of the docking station class" do
      expect(docking_station.class).to eq DockingStation
  end

  it "release bike method creates an instance of the class" do
    expect(subject.release_bike).to be_instance_of Bike
  end

  it { is_expected.to respond_to(:release_bike) }

  it "takes a new bike and responds to working method" do
    expect(Bike.new).to respond_to(:working?)
  end

end
