require './lib/hiker'

RSpec.describe Hiker do
  describe '#initialize' do
    hiker = Hiker.new('Dora', :moderate)
    it 'exists' do
      expect(hiker).to be_an_instance_of(Hiker)
    end
  end
end
