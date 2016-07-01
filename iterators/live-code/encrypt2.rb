def encrypt(sentence)
  alphas = ('A'..'Z').to_a
  sentence.split('').map do |char|
    next char unless alphas.index(char)
    alphas[alphas.index(char) - 3]
  end.join
end

puts encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
