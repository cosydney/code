class View
  def list(recipes)
    recipes.each_with_index { |recipe_obj, index|
     puts "#{index + 1} -> #{recipe_obj.name}"
    }
  end

  def ask_recipe_attrs
    puts "Name you recipe: "
    name = get_input
    puts "Description: "
    value = get_input
    return {name: name, description: value}
  end

  def ask_index
    puts "Which recipe (number!): "
    get_input.to_i - 1
  end

  def get_input
    print "> "
    gets.chomp
  end
end
