require 'json'
require 'open-uri'

api_url = 'http://api.icndb.com/jokes/random?escape=javascript'

response = open(api_url).read
# puts response

quote = JSON.parse(response)
# p quote
puts quote['value']['joke']
