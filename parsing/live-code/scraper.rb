# Write a program that will create a text file with info scrapped on the website of your choice.

# Access the website to retrieve HTML
# http://www.imdb.com/chart/toptv/
# Use Nokogiri to parse the HTML returned
# Search for a specific class to target for scraping
# Write them to a text file
require 'nokogiri'
require 'open-uri'

html_doc = Nokogiri::HTML(open("http://www.imdb.com/chart/toptv/").read)
movies = []
results = html_doc.search(".lister-list tr").each do |result|
  title = result.search(".titleColumn a").text #returns title
  rating = result.search(".ratingColumn strong").text #returns rating
  movies << { title: title, rating: rating } #inserts each movie as an hash in array of movies
end
# File.open("movies.txt", "w") { |file| file.write(results.join("\n")) }
10.times do |i|
  File.open("movies_#{i}.txt", "w") do |file|
    movies.each do |movie|
      file.write(movie[:title] + "\n") if movie[:rating].to_i == i
    end
  end
end
