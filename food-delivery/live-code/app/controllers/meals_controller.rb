require './app/views/meal_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealView.new
  end

  def create
    meal_attrs = @view.ask_manager_for_meal
    @meal_repository.add(Meal.new(meal_attrs))
  end

  def list
    @view.list(@meal_repository.all)
  end
end
