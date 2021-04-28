require './lib/park'

RSpec.describe Park do
  describe '#initialize' do
    park1 = Park.new('Capitol Reef')
    it 'exists' do
      expect(park1).to be_an_instance_of(Park)
    end
    it 'has a name' do
      expect(park1.name).to eq('Capitol Reef')
    end
    it 'has trails' do
      expect(park1.trails).to eq([])
    end
  end
  describe '#add_trail' do
    park1 = Park.new('Capitol Reef')
    it 'adds a trail to the trails array'
      park1.add_trail(trail1)
      park1.add_trail(trail2)
      expect(park1.trails).to eq([trail1, trail2])
  end
end
