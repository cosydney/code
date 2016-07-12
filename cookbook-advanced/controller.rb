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
    @cookbook.add_recipe(Recipe.new(@view.ask_recipe_attrs))
    list
  end

  def destroy
    list
    @cookbook.remove_recipe(@view.ask_index)
    list
  end

  def import
    # Ask the user for what he wants to search
    # Send the request to the website
    results = Recipe.search(@view.ask_search_query)
    # Display the results
    @view.list(results)
    # Make the user pick one recipe
    # Go and get all the information of that recipe
    # Add the recipe to the cookbook
    @cookbook.add_recipe(results[@view.ask_index].import)
  end

  def toggle
    list
    @cookbook.toggle_recipe(@view.ask_toggle)
    list
  end
end
