if (condition)
  # code if the condition is true
else
  # code if the condition is false
end

age = 17
age += 1

if age >= 18
  puts "I can vote!"
else
  puts "I'm screwed"
end

puts "I can vote!" if age >= 18

unless age < 18
  puts "I can vote!"
end

if !(age < 18)
  puts "I can vote!"
end

condition ? code_if_true : code_if_false

if condition
  code_if_true
else
  code_if_false
end

result = age >= 18 ? 'I can vote' : "I can't vote"
puts result

number = 234532

if number < 0
  puts "Number is negative"
elsif number > 10000
  puts "This is a rellay large number"
elsif number > 0
  puts "Number is positive"
end

puts "What do you want to do? [r/w/q]"
print "> "

choice = gets.chomp

case choice
when 'r'
  puts "Reading"
when 'w'
  puts "Writing"
when 'q'
  puts "Quitting"
else
  puts "I don't know what you said"
end


# Store is open from 9 to 12
# Store is open from 14 to 18

time = gets.chomp.to_f
puts "You entered #{time}"

# if (time >= 9 && time <= 12) || (time >= 14 && time <= 18)
if (9.01..12).include?(time) || (14..18).include?(time)
  puts "I'ts OPEN"
else
  puts "It's closed"
end























