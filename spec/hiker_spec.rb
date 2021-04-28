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
end
