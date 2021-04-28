require './lib/park'

RSpec.describe Park do
  describe '#initialize' do
    park1 = Park.new('Capitol Reef')
    it 'exists' do
      expect(park1).to be_an_instance_of(Park)
    end
  end
end
