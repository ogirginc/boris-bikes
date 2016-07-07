require_relative 'bike'

class DockingStation
  attr_reader :bike, :release_bike

# def bike
#   return @bike
# end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end



end
