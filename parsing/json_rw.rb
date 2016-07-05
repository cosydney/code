require 'json'

FILEPATH = 'beers.json'

def read
  return JSON.parse(File.open(FILEPATH).read)
end

def write(beers)
  File.open(FILEPATH, 'w') do |file|
    file.write(JSON.generate(beers))
  end
end

beers_hash = read
beers_hash['beers'][0]['name'] = "New beer name"
write(beers_hash)
