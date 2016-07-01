# Fetch the letter for that index
# Push it into new array/string

def encryption(sentence)
  # Build an array of letters
  alphabet = ("A".."Z").to_a

  # Take a sentence, split it into characters
  sentence.split("").map do |char|
    # Search for each character in the alphabet, return the index
    if alphabet.index(char)
      # Apply -3 to the index if it's a letter
      alphabet[alphabet.index(char) - 3]
    else
      char
    end
  end.join
end
p encryption("E QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
