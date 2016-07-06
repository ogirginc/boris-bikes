require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

=begin
  it 'response to the method release_bike' do
#   docking_station = DockingStation.new
   expect(DockingStation.new.respond_to?(:release_bike)).to eq true
 end
=end
end
