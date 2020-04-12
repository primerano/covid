require 'csv'
require 'json'

rows = CSV.read("co-est2019-alldata-fips.csv", headers: true)
population_by_fips = {}
rows.each do |row|
  population_by_fips[row['FIPS']] = row['POPESTIMATE2019']
end

File.open('fips_to_pop.json', 'w') {|f| f.write population_by_fips.to_json }
