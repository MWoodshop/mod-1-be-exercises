require 'spec_helper'
RSpec.describe Pet do
  # Iteration 1
  describe 'initialize' do
    it 'can initialize' do
      samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })

      expect(samson).to be_an_instance_of(Pet)
    end
    it 'returns correct initialize data on Pet class' do
      samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })

      expect(samson.name).to eq('Samson')
      expect(samson.type).to eq(:dog)
      expect(samson.age).to eq(3)
    end

    describe 'feed' do
      it 'starts with fed as false' do
        samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })
        expect(samson.fed?).to eq(false)
      end
      it 'feed method returns true' do
        samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })
        expect(samson.fed?).to eq(false)
        samson.feed

        expect(samson.fed?).to eq(true)
      end
    end
  end
end
