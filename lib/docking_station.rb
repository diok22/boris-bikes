require_relative 'bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

attr_reader :working_bikes, :broken_bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes' if empty?
    if @working_bikes.length == 0
      "No working bikes"
    else
    @working_bikes.pop
    end
  end

  def dock(bike)
    fail 'Docking station full' if full?
    if bike.working == true
      @working_bikes << bike
      "Working bike"
    elsif bike.working == false
      @broken_bikes << bike
      "Broken bike"
    end
  end

  def count_bikes #this seems to have worked! Try this on irb!
    @working_bikes.count + @broken_bikes.count
  end

private



  def full?
    @working_bikes.count + @broken_bikes.count >= @capacity
  end


  def empty?
    @working_bikes.count + @broken_bikes.count == 0
  end
end


# This is a git pong test.
#test part
#added day 3 branch to fmlharrison
