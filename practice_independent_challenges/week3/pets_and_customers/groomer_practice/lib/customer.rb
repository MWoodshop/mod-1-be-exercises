class Customer
  attr_reader :name, :id, :pets, :outstanding_balance

  def initialize(name, id)
    @name = name
    @id = id
    @pets = []
    @outstanding_balance = 0
  end

  # adopt method assigns the pet specified to the @pets array of the customer specified.
  def adopt(pet)
    @pets << pet
  end

  def charge(amount)
    @outstanding_balance += amount
  end
end
