require './lib/park'
require './lib/trail'

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
    it 'adds a trail to the trails array' do
      trail1 = Trail.new({ name: 'Grand Wash', length: '2.2 miles', level: :easy })
      trail2 = Trail.new({ name: 'Cohab Canyon', length: '1.7 miles', level: :moderate })
      park1.add_trail(trail1)
      park1.add_trail(trail2)
      expect(park1.trails).to eq([trail1, trail2])
    end
  end
  describe '#trails_shorter_than' do
    trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
    trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
    trail3 = Trail.new({name: 'Chimney Rock Loop', length: '3.6 miles', level: :strenuous})
    park1 = Park.new('Capitol Reef')
    park1.add_trail(trail1)
    park1.add_trail(trail2)
    park1.add_trail(trail3)
    it 'returns a list of trails shorter than a given distance' do
      expect(park1.trails_shorter_than(2.5)).to eq([trail1, trail2])
    end
  end
end
