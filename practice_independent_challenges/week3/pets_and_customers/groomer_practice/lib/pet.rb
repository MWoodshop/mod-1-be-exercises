class Pet
  attr_reader :name, :type, :age

  def initialize(data)
    @name = data[:name]
    @type = data[:type]
    @age = data[:age]
  end
end
