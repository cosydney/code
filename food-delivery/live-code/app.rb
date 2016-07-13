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
employee_repo = EmployeeRepository.new
order_repo = OrderRepository.new(meal_repo, cus_repo)

# meal = Meal.new(name: 'Bitoque', price: 5)
# customer = cus_repo.find(2)

# meal_repo.add(meal)

# order = Order.new(
#   customer: customer,
#   meal: meal
# )

# coco = Employee.new(username: 'coco', password: 'chanel', position: :delivery_guy)
# karl = Employee.new(username: 'karl', password: 'lagerfeld', position: :manager)

# employee_repo.add(coco)
# employee_repo.add(karl)

# p employee_repo.all

# order.meal #=> #<Meal @id=? @name="Bitoque">
# order.customer #=> #<Customer @id=2 @name="Lina">
# order_repo.add(order)

Router.new(
  meals: MealsController.new(meal_repo),
  customers: CustomersController.new(cus_repo),
  orders: OrdersController.new(employee_repo, order_repo, meal_repo, cus_repo)
).run


