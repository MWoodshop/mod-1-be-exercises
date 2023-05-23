require 'spec_helper'
RSpec.describe Groomer do
  # Iteration 1
  describe 'initialize' do
    it 'can initialize' do
      billy = Groomer.new('billy')

      expect(billy).to be_a(Groomer)
    end
  end
end
