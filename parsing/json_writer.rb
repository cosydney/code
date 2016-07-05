require 'json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Cuvée des Trolls',
    appearance: 'Red',
    origin:     'Angola'
  },
  {
    name:       'Cuvée des Trolls',
    appearance: 'Red',
    origin:     'Angola'
  },
  {
    name:       'Cuvée des Trolls',
    appearance: 'Red',
    origin:     'Angola'
  },
  {
    name:       'Cuvée des Trolls',
    appearance: 'Red',
    origin:     'Angola'
  },
]}

filepath = 'beers.json'

File.open(filepath, 'w') do |file|
  file.write(JSON.generate(beers))
end#
