require_relative 'bike'

class DockingStation
  attr_reader :bike, :release_bike

# def bike
#   return @bike
# end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
    #raise ArgumentError, 'No bike available' if Bike.new == nil?
    #raise ArgumentError, 'No bike available' if bike == 0
  end

  def dock(bike)
    @bike = bike
  end
end
