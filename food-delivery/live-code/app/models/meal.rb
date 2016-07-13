class Meal
  attr_accessor :name, :price, :id, :orders

  def initialize(attributes)
    @id = attributes[:id].to_i
    @name = attributes[:name]
    @price = attributes[:price]
    @orders = []
  end

  def add_order(order)
    order.meal = self
    @orders << order
  end
end
