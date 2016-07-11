class View
  def list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} [#{recipe.cooked ? '*' : ' '}] #{recipe.name}"
    end
  end

  def ask_recipe_attrs
    puts "Name you recipe: "
    name = get_input
    puts "Description: "
    value = get_input
    return {name: name, description: value}
  end

  def ask_toggle
    puts "You can toggle a recipe as cooked or not"
    ask_index
  end

  def ask_index
    puts "Which recipe (number!): "
    get_input.to_i - 1
  end

  def get_input
    print "> "
    gets.chomp
  end

  def ask_search_query
    puts "What do you want to cook?"
    get_input
  end
end




