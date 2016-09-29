require_relative 'bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

    attr_accessor :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
      @capacity = capacity
      @bike = []
    end

    def release_bike
      raise "No bike available"  if empty?
      @bike.pop
    end

    def dock(bike)
      raise "Dock full" if full?
      @bike << bike
    end


    private

    def full?
      @bike.length == @capacity
    end

    def empty?
      @bike.length == 0
    end

end
