require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  # it { is_expected.to respond_to(:dock)}

  let(:bike) { double("bike", working?: true) }
  it 'release a working bike' do
    #allow(bike).to receive(:working?).and_return(true)
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = DockingStation.new
    expect(bike).to respond_to(:dock)
  end

  it 'docks a bike' do
    bike = DockingStation.new
    expect(bike).to respond_to(:dock)
  end

  it 'shows the bikes that are docked' do
    bike = double(:bike)
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#release_bike' do
    it 'releases a bike' do
     bike = double(:bike)
     subject.dock(bike)
     # we want to release the bike we docked
     expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'able to specify a larger capacity when necessary.' do
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { double :bike }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock(bike) }.to raise_error 'Capacity full'
    end
  end

  it 'allows us to dock 30 bikes' do
    station = DockingStation.new(30)
    expect(station.capacity).to eq(30)
  end

  it 'allows us to dock 20 (default) bikes' do
    station = DockingStation.new
    expect(station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end
end
