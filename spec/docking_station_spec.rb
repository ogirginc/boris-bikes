require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'release_bike should create Bike class' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'when the instance of Bike calls workign? should be true' do
    expect(subject.release_bike).to be_working
  end

  it "dock the user's bike at the docking station" do
    expect(subject).to respond_to :dock
  end

  it 'user docked the bike at the docking station' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'docking stations not to release bikes when there are none available' do
    expect { subject.dock(bike) }.to raise_error
  end
end
