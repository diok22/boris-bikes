require_relative 'bike.rb'

class DockingStation

  attr_reader :bike

    def release_bike
      if @bike == nil
        raise "No bike available"
      else
        remove_instance_variable(:@bike)
      end
    end

    def dock(bike)
      @bike = bike
    end

end
