# Build an array of letters
# Take a sentence, split it into characters
# Search for each character in the alphabet, return the index
# Apply -3 to the index if it's a letter
# Fetch the letter for that index
# Push it into new array/string

def encryption(sentence)
  alphabet = ("A".."Z").to_a

  sentence.split("").map do |char|
    if alphabet.index(char)
      alphabet[alphabet.index(char) - 3]
    else
      char
    end
  end.join
end
p encryption("E QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
