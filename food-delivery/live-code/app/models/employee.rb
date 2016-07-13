class Employee
  attr_accessor :username, :password, :position, :orders, :id

  def initialize(attributes)
    @id = attributes[:id].to_i
    @username = attributes[:username]
    @password = attributes[:password]
    @position = attributes[:position].to_sym
    @orders = []
  end

  def add_order(order)
    order.employee = self
    @orders << order
  end
end
