require 'csv'
rows = CSV.read("co-est2019-alldata.csv", headers: true)
headers =  rows.headers[0..4] + ["FIPS"] + rows.headers[5..-1]
CSV.open("co-est2019-alldata-fips.csv", "w", :headers => true) do |csv|
  csv << headers
  rows.each do |row|
    csv << row.values_at(0..4) + [row['COUNTY'] + row['STATE']] + row.values_at[5..-1]
  end
end
