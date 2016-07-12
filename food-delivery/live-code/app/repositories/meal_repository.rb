require './app/models/meal'
require 'csv'

class MealRepository
  def initialize
    @meals = []
    @csv_file = 'data/meals.csv'
    load
  end

  def add(meal)
    meal.id = @meals.size.zero? ? 1 : @meals[-1].id.next
    @meals << meal
    save
  end

  def all
    @meals
  end

  def find(meal_id)
    @meals.find { |meal| meal.id == meal_id }
  end

  def save
    CSV.open(@csv_file, "w") do |csv|
      csv << [ "id", "name", "price" ]
      @meals.each do |meal|
        csv << [ meal.id, meal.name, meal.price ]
      end
    end
  end

  def load
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      meal = Meal.new(row)
      @meals << meal
    end
  end
end
