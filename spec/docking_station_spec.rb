require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike)}
  # it { is_expected.to respond_to(:dock)}


  it 'release a working bike' do
    # bike = subject.release_bike
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks a bike' do
     bike = DockingStation.new
     expect(bike).to respond_to(:dock)
  end

  # it 'shows the bikes that are docked' do
  #   bike = nil
  #   expect(DockingStation.new.dock(bike)).to eq(@bike)
  # end

  it { is_expected.to respond_to(:dock).with(1).argument}

end
