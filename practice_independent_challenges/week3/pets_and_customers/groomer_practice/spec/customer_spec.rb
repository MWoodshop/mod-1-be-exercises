require 'spec_helper'
RSpec.describe Customer do
  # Iteration 1
  describe 'initialize' do
    it 'can initialize' do
      joel = Customer.new('Joel', 2)
      expect(joel).to be_a(Customer)
    end
  end
end
