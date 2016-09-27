require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new

  it "creating an instance of the docking station class" do
      expect(docking_station.class).to eq DockingStation
  end

  it { is_expected.to respond_to(:release_bike) }
end
