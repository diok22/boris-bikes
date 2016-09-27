require 'docking_station'

describe DockingStation do
  it "creating an instance of the docking station class" do
      docking_station = DockingStation.new
      expect(docking_station.class).to eq DockingStation
  end
end
