# README

I want to compare COVID-19 cases based on percent of county population.
 
County population data is here.
https://www2.census.gov/programs-surveys/popest/datasets/2010-2019/counties/totals/co-est2019-alldata.csv

But I need a FIPS column to map with the NY Times data. https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv

There are some control characters in the census data so I just pulled locally and fixed it with notepad..   I'll investgate some other time but for now I included the cleaned file in this repo.


   ruby add_fips_to_census_data.rb

creates a new csv file with the fips column which I then convert to JSON.
 
   ruby json.rb > co-est2019-alldata-fips.json

It could be one script but someone might want the new CSV.

Yeah, its rough but I only need to do this once so I probably won't clean it.  At least now I can start working with the data.
