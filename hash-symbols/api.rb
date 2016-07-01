require 'open-uri'
require 'json'

text = open("https://api.github.com/repos/lewagon/www/commits/77e412e15a8de982688fe1a0139b49b8a2d1f589").read

ruby_hash = JSON.parse(text)

puts ruby_hash['commit']['author']['name']
