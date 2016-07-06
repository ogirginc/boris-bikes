require './lib/docking_station.rb'
describe DockingStation do
 it 'response to the method release_bike' do
#   docking_station = DockingStation.new
   expect(DockingStation.new.respond_to?(:release_bike)).to eq true
 end
end
