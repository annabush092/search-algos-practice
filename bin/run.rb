require_relative '../config/environment.rb'

all_searches = ["simple", "binary"]

# create random array of numbers between 1 and 100
rando_arr = []
1000000.times do
  rando_arr << (Random.rand() * 1000000 + 1).to_i
end
# puts "The new array is: #{rando_arr}"

MySearch.run(all_searches, rando_arr)
