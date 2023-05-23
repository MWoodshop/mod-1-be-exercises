require 'spec_helper'
RSpec.describe Customer do
  # Iteration 1
  describe 'initialize' do
    it 'can initialize' do
      joel = Customer.new('Joel', 2)
      expect(joel).to be_a(Customer)
    end
    it 'stores data correctly' do
      joel = Customer.new('Joel', 2)

      expect(joel.name).to eq('Joel')
      expect(joel.id).to eq(2)
    end
  end
end
