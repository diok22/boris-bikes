require_relative 'bike.rb'

class DockingStation

  def initialize(size=20)
    @size = size
    @bike = []
  end

  attr_reader :bike

    def release_bike
      if @bike.empty?
        raise "No bike available"
      else
        @bike.pop
      end
    end

    def dock(bike)

      if @bike.length == @size
        raise "Dock full"
      else
          @bike << bike
      end
    end

end
