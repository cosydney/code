require './router'
Dir["./app/repositories/*.rb"].each {|file| require "./" + file }
Dir["./app/controllers/*.rb"].each {|file| require "./" + file }
# controller = MealsController.new(MealRepository.new)
# customer = Customer.new(name: "Lina", address: "hsd")

# order = Order.new(
#   customer: cus_repo.find(2),
#   meal: meal_repo.find(1)
# )

# repo = OrderRepository.new(meal_repo, cus_repo)
# repo.add(order)
#
cus_repo = CustomerRepository.new
meal_repo = MealRepository.new

Router.new(
  meals: MealsController.new(meal_repo),
  customers: CustomersController.new(cus_repo),
  orders: OrdersController.new(OrderRepository.new(meal_repo, cus_repo))
).run


