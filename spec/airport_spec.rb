require 'airport'
  
describe Airport do
  it 'instructed to land plane at airport' do
    expect(subject).to respond_to(:land).with(1).argument
  end

  describe '#take-off' do
    it 'instructed to take off at airport' do
      expect(subject).to respond_to(:take_off).with(1).argument
    end
    it 'confirms that plane is airborne' do
     expect(subject.take_off("plane1")).to eq 'plane has taken off'
    end

  describe '#full?' do
    it 'is expected to respond to full?' do
      expect(subject).to respond_to(:full?)
    end
    it 'should let you know when the airport is full' do
      expect(subject.full?).to eq true
    end
    it 'should raise an error when full' do
      airport = Airport.new
      airport.land("plane1")
      expect(subject.land("plane2")).to raise_error('The airport is full')
    end
end
end
end
