require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'release_bike should create Bike class' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'when the instance of Bike calls workign? should be true' do
    expect(subject.release_bike).to be_working
  end

end
