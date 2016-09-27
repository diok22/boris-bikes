describe "docking station" do
  it "creating an instance of the docking station class" do
      docking_station = DockingStation.new
      expect(docking_station.class).to_eq DockingStation
  end
end
