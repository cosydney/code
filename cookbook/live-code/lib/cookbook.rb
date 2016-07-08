require 'csv'

class Cookbook

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(name: row[0], description: row[1])
    end
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    save
  end

  def save
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << recipe.to_csv
      end
    end
    true
  end
end
