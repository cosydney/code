require "./app/views/base_view"
class MealView < BaseView
  def list(meals)
    meals.each { |meal| puts "- #{meal.name} (#{meal.price}€)" }
  end

  def ask_manager_for_meal
    puts "What is the name of the meal?"
    name = ask_input
    puts "How much does it cost?"
    price = ask_input

    {name: name, price: price}
  end

end
