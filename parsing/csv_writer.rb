require 'csv'

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'beers.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Edelweiss', 'White', 'Austria']
  csv << ['Cuvée des Trolls', 'Blond', 'Belgium']
  # ...
end
