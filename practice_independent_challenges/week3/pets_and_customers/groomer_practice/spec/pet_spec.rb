require 'spec_helper'
RSpec.describe Customer do
  describe 'initialize' do
    it 'can initialize' do
      samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })

      expect(samson).to be_an_instance_of(Pet)
    end
  end
end
