require 'json'

serialized_beers = File.open('beers.json').read

beers = JSON.parse(serialized_beers)
p beers
# => beers is a `Hash`
