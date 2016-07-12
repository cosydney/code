require './app/views/customer_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomerView.new
  end

  def create
    customer_attrs = @view.ask_manager_for_customer
    @customer_repository.add(Customer.new(customer_attrs))
  end

  def list
    @view.list(@customer_repository.all)
  end
end
