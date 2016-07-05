require 'open-uri'
require 'nokogiri'

puts "What do you want to cook?"
search = gets.chomp

html_file = open("http://www.epicurious.com/tools/searchresults?search=#{search}")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.recipeLnk').each do |element|
  puts element.text
  puts "http://www.epicurious.com" + element.attribute('href')
end
