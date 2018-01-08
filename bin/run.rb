require_relative '../config/environment.rb'

ALL_SEARCHES = ["simple", "binary"]

MySearch.run(ALL_SEARCHES)

# def self.run
#   # get user's choice of which search algorithm to use
#   search_index = MySearch.get_algorithm(ALL_SEARCHES)
#
#   #perform a search using the chosen algorithm
#   my_search = MySearch.new(ALL_SEARCHES[search_index])
#   my_search.make_my_search
#
#   puts "Would you like to make another search? (y/n)"
#   choice = gets.chomp
#   if choice == "y"
#     #recursion goes here
#   end
# end
