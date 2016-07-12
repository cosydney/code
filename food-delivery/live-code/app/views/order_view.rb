require "./app/views/base_view"

class OrderView < BaseView
  def list(orders)
    orders.each do |order|
      puts "[#{order.delivered ? 'X' : ' '}] #{order.customer.name} ordered #{order.meal.name}"
    end
  end
end
