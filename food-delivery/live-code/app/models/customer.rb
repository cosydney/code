class Customer
  attr_accessor :name, :address, :id, :orders

  def initialize(attributes)
    @id = attributes[:id].to_i
    @name = attributes[:name]
    @address = attributes[:address]
    @orders = []
  end

  def add_order(order)
    order.customer = self
    @orders << order
  end
end
