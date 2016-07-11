require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    @view.list(@cookbook.all)
  end

  def create
    attrs = @view.ask_recipe_attrs #return a hash {name: value, description: value}
    @cookbook.add_recipe(Recipe.new(attrs))
    list
  end

  def destroy
    list
    @cookbook.remove_recipe(@view.ask_index)
    list
  end

  def import
    # Ask the user for what he wants to search
    query = @view.ask_search_query
    # Send the request to the website
    results = Recipe.search(query)
    # Display the results
    @view.list(results)
    # Make the user pick one recipe
    index = @view.ask_index
    # Go and get all the information of that recipe
    recipe = results[index].import
    # Add the recipe to the cookbook
    @cookbook.add_recipe(recipe)
  end

  def toggle
    list
    @cookbook.toggle_recipe(@view.ask_toggle)
    list
  end
end




