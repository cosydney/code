# # Get input from user
# # Generate a random move for the computer
# # Compare the two answers and see who won
# # Return the result
# answer =["rock", "paper", "scissor"]
# puts "Your input"
# print "> "
# choice = answer.index(gets.chomp)
# computer_choice = rand(0..2)
# puts answer[choice]
# puts answer[computer_choice]

# difference = choice - computer_choice

# if difference == 1 || difference == -2
#   puts "win"
# elsif difference == -1 || difference == 2
#   puts "lose"
# else
#   puts "draw"
# end


i = 0
loop do
  i += 1
  puts "Looping"
  break if i == 10
end




