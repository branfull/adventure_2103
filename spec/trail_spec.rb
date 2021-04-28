require './lib/trail'

RSpec.describe Trail do
  describe '#initialize' do
    trail1 = Trail.new({ name: 'Grand Wash', length: '2.2 miles', level: :easy })
    it 'exists' do
      expect(trail1).to be_an_instance_of(Trail)
    end
    it 'has a name' do
      expect(trail1.name).to eq('Grand Wash')
    end
    it 'has a level' do
      expect(trail1.level).to eq(:easy)
    end
  end
  describe '#length' do
    it 'returns the length of the trail as a float' do
      expect(trail1.name).to eq(2.2)
      expect(trail1.name).to be_an_instance_of(Float)
    end
  end
end
