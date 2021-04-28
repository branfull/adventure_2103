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
end
