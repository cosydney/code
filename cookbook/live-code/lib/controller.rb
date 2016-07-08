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
end
