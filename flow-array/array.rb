# beatles = "john ringo paul".split
# Declaration
beatles = ["john", "ringo", "paul"]

# Reading
puts beatles[2]

# Pushing item
beatles.push("george")
beatles << "george"

# Get size
puts beatles.size
puts beatles.length
puts beatles.count

index = 0

while index < beatles.length
  puts beatles[index]
  index += 1
end

for beatle in beatles
  puts beatle
end

beatles.each do |beatle|
  puts beatle
end

beatles.each { |beatle| puts beatle }


puts beatles.count("george")


["David", "Bob"]
=> ["Bob", "David"]


