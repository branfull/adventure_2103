require './lib/hiker'

RSpec.describe Hiker do
  describe '#initialize' do
    hiker = Hiker.new('Dora', :moderate)
    it 'exists' do
      expect(hiker).to be_an_instance_of(Hiker)
    end
    it 'has a name' do
      expect(hiker.name).to eq('Dora')
    end
    it 'has an experience level' do
      expect(hiker.experience_level).to eq(:moderate)
    end
    it 'has a collection of snacks' do
      expect(hiker.snacks).to eq({})
    end
    it 'has a list of parks visited' do
      expect(hiker.parks_visited).to eq([])
    end
  end
  describe '#pack' do
    it 'adds an item and quantitiy to the snacks collection' do
      hiker = Hiker.new('Dora', :moderate)
      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)
      expect(hiker.snacks).to eq({ 'water' => 1, 'trail mix' => 3 })
    end
    it 'updates the quantity of an item if item is already in the collection' do
      hiker = Hiker.new('Dora', :moderate)
      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)
      hiker.pack('water', 1)
      expect(hiker.snacks).to eq({ 'water' => 2, 'trail mix' => 3 })
    end
  end
  describe '#visit' do
    hiker = Hiker.new('Dora', :moderate)
    it 'adds a park to the list of parks visited' do
      hiker.visit(park1)
      hiker.visit(park2)
      expect(hiker.parks_visited).to eq([park1, park2])
    end
  end
end
