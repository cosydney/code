students = ["Stanislas", "David", "João", "Matthieu"]
students_age = [31     ,    32  ,   24  ,  37       ]

# students.each_with_index do |student, index|
#   puts "#{student} is #{students_age[index]} years old"
# end


student_hash = {
  "João" => 24,
  "David" => 32,
  "Stanislas" => 31,
  "Matthieu" => 37
}

# p students[45]

# p student_hash.keys
# p student_hash.values

# student_hash.keys.each do |key|
#   puts "#{key} is #{student_hash[key]} years old"
# end

# Reading
# p student_hash["David"]

# Writing
student_hash["David"] = 28

# Adding
student_hash["Cyrille"] = 29

# Removing
# p student_hash.delete("Cyrille")

# student_hash.each do |key, value|
#   student_hash.delete(key) if value == 28
# end

# p student_hash

# Change the key
# student_hash["Cyrille"] = student_hash.delete("Matthieu")

city = {
  "name" => "Paris",
  "population" => 2211000,
  "monument" => "Tour Eiffel"
}

city["monument"]


# second_city = {
#   :name => "Lisbon",
#   :population => 500000,
#   :monument => "Bitoque"
# }

second_city = {
  name: "Lisbon",
  population: 500000,
  monument: "Bitoque",
}

second_city[:population] += 20000

# p second_city


def tag(tag_name, content, options = {})
  tag_attributes = options.map do |key, value|
    "#{key}='#{value}'"
  end

  "<#{tag_name} #{tag_attributes.join(" ")}>#{content}</#{tag_name}>"
end

# tag("h1", [["href", "www.google.com"], ["id", "big_link"]])
p tag("h1", "Click here for Google!", id: "link")


# city = {}

# city[:name] = row[0]
# city[:population] = row[1]


# city = {
#   name: "Paris",
#   population: 2211000,
#   monument: "Tour Eiffel"
# }
