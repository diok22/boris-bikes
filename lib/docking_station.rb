require_relative 'bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

    def initialize
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
      @bike.length == DEFAULT_CAPACITY
    end

    def empty?
      @bike.length == 0
    end

end
