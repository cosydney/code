def acronym(sentence)
  #split the sentence
  sentence.upcase.split.map { |word| word.split('').first }.join
end

p acronym("What the fuck")

