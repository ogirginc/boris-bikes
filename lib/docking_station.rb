require_relative './bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'no bikes available' unless @bike
    Bike.new
  end

  def dock(bike)
    fail 'Docking station full' unless @bike == nil
    @bike = bike
  end
end
