require 'docking_station'

describe DockingStation do

  it "creating an instance of the docking station class" do
      expect(subject.class).to eq DockingStation
  end

  it { is_expected.to respond_to(:release_bike) }

  it "takes a new bike and responds to working method" do
    expect(Bike.new).to respond_to(:working?)
  end

  it "prints out an error if no bike is currently on the station" do
    expect { subject.release_bike }.to raise_error("No bike available")
  end

  it "docking station accepts up to 20 bikes" do
    docking_station = DockingStation.new
    20.times do
      docking_station.dock(Bike.new)
    end
    expect { docking_station.dock(Bike.new) }.to raise_error("Dock full")
  end

  it "capacity defaults to 20 if no argument is initiated" do
    expect(subject.capacity).to eq  DockingStation::DEFAULT_CAPACITY
  end

  it "capacity size depends on argument while initializing class" do
    docking_station_size5 = DockingStation.new(5)
    expect(docking_station_size5.capacity).to eq 5
  end

end
