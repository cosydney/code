class Order
  attr_accessor :customer, :meal, :delivered, :id

  def initialize(attributes)
    @id = attributes[:id].to_i
    @customer = attributes[:customer]
    @meal = attributes[:meal]
    @delivered = eval(attributes[:delivered].to_s) || false
  end
end
