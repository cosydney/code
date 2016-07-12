require './app/views/order_view'

class OrdersController
  def initialize(order_repository)
    @order_repository = order_repository
    @view = OrderView.new
  end

  def list
    @view.list(@order_repository.all(delivered: false))
  end
end
