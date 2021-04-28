require './lib/trail'

RSpec.describe Trail do
  describe '#initialize' do
    trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
    it 'exists' do
      expect(trail1).to be_an_instance_of(Trail)
    end
  end
end
