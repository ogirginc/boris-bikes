require 'bike.rb'

class DockingStation
  attr_reader :bike
  def release_bike
    @bike = nil
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end
