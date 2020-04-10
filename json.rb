require 'csv'
require 'json'

rows = CSV.read("co-est2019-alldata-fips.csv", headers: true)
as_hash = rows.map {|row| row.to_h}
print as_hash.to_json
