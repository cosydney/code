# What is a variable?
x = 4 # Assignment
x = 10 # Re-assignment
x = nil
y = nil

# puts y

# What is a method?
# Set of instructions
# Takes parameters 0..many
# Returns a value

def multiply(x, y)
  return x * y
end

# puts(multiply(2, 3))

# multiply(2, 3)


# What is an array?
# Set of ordered values
values = [7, 2, 5, 12]
          # 0  1  2  3
# Reading an element of an array
values[2]
# Writing
values[3] = 3
# Adding an element
values << 10 << 56 << 89 << 56
# p values

# Deleting an element
# values.delete(56)
# Deleting an element at an index
# values[5] = nil
# values.compact!
# values.delete_at(5)

# p values

# [7, 2, 5, 3, 10, 56, 89, 56]
# values.each do |anything_i_want|
#   puts(anything_i_want + 3)
# end

# Hash
# city = {"name" => "Paris", "population" => 6000000}
dictionary = {"water" => "Liquid H20", "ride" => ["a boat", "a car"]}

# Add a word in the dictionary
dictionary["table"] = "4 legs, a piece of wood"
dictionary["water"] = "Another definition of water" # Rewriting a definition

dictionary.delete("table")

# p(dictionary)

# city = {"name" => "Paris", "population" => 6000000}
# city1 = {:name => "Paris", :population => 6000000}
# city2 = {:name => "London", :population => 5000000}
city = {name: "Paris", population: 6000000} # Shortcut syntax

cities = {
  "Paris" => {
    population: 6000000,
    monument: "Eiffel"
  },
  "London" => {
    population: 5000000,
    monument: "Big Ben"
  }
}

# london = cities["London"]
# london[:monument] = "Buckingham Palace"
cities["London"][:monument] = "Buckingham Palace"

# p cities


# def tag(tag_name, content = "", options = {}, value = 0)
#   p options.keys
# end

# tag("h1", "Content here!")
# tag("h1", "Content here!", {href: "www.lewagon.org"})
# tag("h1", "Content here!", href: "www.lewagon.org", class: "button")

1. PSEUDO-CODE
2. Code LINE by LINE and test it
3. Use EASIEST syntax for you
4. Code something that WORKS then handling exception

