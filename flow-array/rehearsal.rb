age = 28 # Assignment

puts age

age = age + 1 #Incrementation
age += 1 #Incrementation

puts age

def age_plus_ten(age = 20)
  return age + 10
end

puts age_plus_ten

splitted_array = "if I start splitting this simple string".split

print "printed"
puts splitted_array
p splitted_array

def puts(value)
  print value + "\n"
end

def p(value)
  puts value.inspect
end

puts "What do you want to do?"
print "> "
gets.chomp
