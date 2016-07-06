require 'bike.rb'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "no bikes available" unless @bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end
