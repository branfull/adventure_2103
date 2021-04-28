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
end
