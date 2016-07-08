require_relative 'bike'

class DockingStation
  attr_reader :bikes, :release_bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Capacity full' if @bikes.count >= 20
    @bikes << bike
  end
end
