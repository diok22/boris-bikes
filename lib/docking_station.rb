require_relative 'bike.rb'

class DockingStation

  def initialize(size=3)
    @size = size
    @bike = []
  end

  attr_reader :bike

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
      @bike.length == @size
    end

    def empty?
      @bike.length == 0
    end

end
