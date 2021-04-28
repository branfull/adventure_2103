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
    trail4 = Trail.new({name: "Queen's/Navajo Loop", length: '2.9 miles', level: :moderate})
    trail5 = Trail.new({name: 'Rim Trail', length: '11 miles', level: :easy})
    trail6 = Trail.new({name: 'Tower Bridge', length: '3 miles', level: :moderate})
    park1 = Park.new('Capitol Reef')
    park2 = Park.new('Bryce Canyon')
    park1.add_trail(trail1)
    park1.add_trail(trail2)
    park1.add_trail(trail3)
    park2.add_trail(trail4)
    park2.add_trail(trail5)
    park2.add_trail(trail6)
    it 'returns a list of trails shorter than a given distance' do
      expect(park1.trails_shorter_than(2.5)).to eq([trail1, trail2])
      expect(park2.trails_shorter_than(2.5)).to eq([])
    end
  end
  describe '#hikeable_miles' do
    trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
    trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
    trail3 = Trail.new({name: 'Chimney Rock Loop', length: '3.6 miles', level: :strenuous})
    trail4 = Trail.new({name: "Queen's/Navajo Loop", length: '2.9 miles', level: :moderate})
    trail5 = Trail.new({name: 'Rim Trail', length: '11 miles', level: :easy})
    trail6 = Trail.new({name: 'Tower Bridge', length: '3 miles', level: :moderate})
    park1 = Park.new('Capitol Reef')
    park2 = Park.new('Bryce Canyon')
    park1.add_trail(trail1)
    park1.add_trail(trail2)
    park1.add_trail(trail3)
    park2.add_trail(trail4)
    park2.add_trail(trail5)
    park2.add_trail(trail6)
    it 'returns the total miles of all trails at a given park' do
      expect(park1.hikeable_miles).to eq(7.5)
      expect(park2.hikeable_miles).to eq(16.9)
    end
  end
  describe '#trails_at_level' do
    trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
    trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
    trail3 = Trail.new({name: 'Chimney Rock Loop', length: '3.6 miles', level: :strenuous})
    trail4 = Trail.new({name: "Queen's/Navajo Loop", length: '2.9 miles', level: :moderate})
    trail5 = Trail.new({name: 'Rim Trail', length: '11 miles', level: :easy})
    trail6 = Trail.new({name: 'Tower Bridge', length: '3 miles', level: :moderate})
    park1 = Park.new('Capitol Reef')
    park2 = Park.new('Bryce Canyon')
    park1.add_trail(trail1)
    park1.add_trail(trail2)
    park1.add_trail(trail3)
    park2.add_trail(trail4)
    park2.add_trail(trail5)
    park2.add_trail(trail6)
    it 'returns a list of all trails at a given level' do
      expect(park1.trails_at_level(:moderate)).to eq([trail2])
      expect(park2.trails_at_level(:moderate)).to eq([trail4, trail6])
    end
  end
end
