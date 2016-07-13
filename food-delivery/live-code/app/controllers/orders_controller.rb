require './app/views/order_view'
require './app/views/meal_view'
require './app/views/employee_view'
require './app/views/customer_view'

class OrdersController
  def initialize(employee_repository, order_repository, meal_repository, cus_repository)
    @employee_repository = employee_repository
    @order_repository = order_repository
    @meal_repository = meal_repository
    @cus_repository = cus_repository

    @employee_view = EmployeeView.new
    @order_view = OrderView.new
    @meal_view = MealView.new
    @cus_view = CustomerView.new
  end

  def list
    @order_view.list(@order_repository.all(delivered: false))
  end

  def create
    # Display meals
    @meal_view.list(@meal_repository.all)
    # Choose one meal
    meal_id = @meal_view.ask_manager_for_meal_id
    # Display Customers
    @cus_view.list(@cus_repository.all)
    # Get one customer
    customer_id = @cus_view.ask_manager_for_customer_id
    # Display Delivery guys
    @employee_view.list(@employee_repository.all(position: :delivery_guy))
    # Get one delivery guy
    employee_id = @employee_view.ask_manager_for_employee_id

    # Create a new order
    order = Order.new(
      meal: @meal_repository.find(meal_id),
      customer: @cus_repository.find(customer_id),
      employee: @employee_repository.find(employee_id)
    )

    # Add it to the repository
    @order_repository.add(order)
    # Display orders
    @order_view.list(@order_repository.all)
  end
end
