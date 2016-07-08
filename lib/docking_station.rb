require_relative 'bike'

class DockingStation
  attr_reader :bike, :release_bike

  def release_bike
    raise 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    raise 'Capacity full' if @bike
    @bike = bike
  end
end
