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
    expect(subject).to respond_to :return_bike
  end

  it 'user docked the bike at the docking station' do
    expect(subject.return_bike).to be true
  end
  it 'check if there are bikes at the docking station' do
    expect(subject.release_bike(@)
  end
end
