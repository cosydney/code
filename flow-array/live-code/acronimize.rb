# Split the input sentence into words
# For each one, take the first letter
# Create an empty string where we put each one of them capitalize

def acronomize(sentence)
  # sentence.split(" ").map { |word| word.capitalize[0] }.join

  # acronym = ""
  # i = 0
  # words = sentence.split(" ")
  # while i < words.size
  #   acronym += words[i].capitalize[0]
  #   i += 1
  # end

  # acronym

  sentence.split(" ").map { |word| word[0] }.join.upcase
end

p acronomize('hi this is me')
