count = 0

while count < 10
  count = 0
  puts "Looping #{count}"
  count += 1
  puts "Looping end #{count}"
end

puts "Welcome to the looping program"

while gets.chomp == 'y'
  puts "Looping"
  puts "Loop again?"
end

array = [1,2,3, 12, 12,12]

for element in array
  puts "Element: #{element}"
end

for element in 9..12
  puts "Element: #{element}"
end
