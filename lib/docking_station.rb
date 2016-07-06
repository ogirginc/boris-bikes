require 'bike.rb'

class DockingStation

  def release_bike
    Bike.new
  end
  def return_bike(bike)
    @bike = bike
  end
end
