# Create a program that reads from a text file and compute the histogram of word frequencies in this text.
#
def histogram
  my_hash = Hash.new(0)

  File.read('lorem.txt') # Open the file & Read it
      .downcase # Downcase the whole text
      .gsub(/[^a-z\s]/i, '') # Remove special characters
      .split(" ") # Create an array of words
      .each { |word| my_hash[word] += 1 } # Go through the array and for each occurence of the word we put +1 to the value of that word in the hash

  my_hash
end

p histogram
