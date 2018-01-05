require_relative '../config/environment.rb'

ALL_SEARCHES = ["simple", "binary"]

# get user's choice of which search algorithm to use
search_index = MySearch.get_algorithm(ALL_SEARCHES)

#perform a search using the chosen algorithm
my_search = MySearch.new(ALL_SEARCHES[search_index])
my_search.make_my_search


#search random array
# simple_search("a", "b")
