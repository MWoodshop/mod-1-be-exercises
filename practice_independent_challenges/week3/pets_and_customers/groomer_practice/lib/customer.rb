class Customer
  attr_reader :name, :id, :pets

  def initialize(name, id)
    @name = name
    @id = id
    @pets = []
  end

  # adopt method assigns the pet specified to the @pets array of the customer specified.
  def adopt(pet)
    @pets << pet
  end
end
