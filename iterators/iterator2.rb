fruits = ["Mango", "Peach", "Apple", "Banana"]

# fruits.each_with_index do |fruit, index|
#   puts "#{index}: #{fruit}"
# end

# fruits = fruits.map { |fruit| fruit.upcase }
# fruits.map! { |fruit| fruit.upcase }
# fruits.map!(&:upcase).map!(&:downcase).map!(&:capitalize)
# p fruits


# p numbers.map { |number| number.next }
# p numbers.map(&:next)

# counter = 0

# fruits.each do |fruit|
#   counter += 1 if fruit.include?('n')
# end

# puts counter

# fruits.each { |fruit| puts fruit.length }
# counter = fruits.count { |fruit| fruit.length.even? }

# puts counter
#

# fruits.map!(&:downcase).select! { |fruit| fruit[0] == "m" }
# array.what_do_you_want_to_do { |element| condition }

# p fruits


numbers = [3, 7, 4, 8, 2]
# sum = 0

# numbers.each do |number|
#   sum += number
# end

# p sum

# result = numbers.inject(0) do |sum, number|
  #   sum += number
# end


# p result

# p(fruits.inject(&:+))


def tag
  yield
end

execute_with_a_timer do |value|
  puts "Executing"
  puts value
  sleep 1
  puts "Done"
end









