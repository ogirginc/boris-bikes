require 'van'

describe Van do
  it 'loads broken bikes to the van' do
    broken_bikes = double(:broken_bikes)
    expect(subject).to respond_to(:load).with(1).argument
  end
end
