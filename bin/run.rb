require_relative '../config/environment.rb'

ALL_SEARCHES = ["simple", "binary"]

#print options and get user's choice
MySearch.print_options(ALL_SEARCHES)
response = MySearch.get_algo(ALL_SEARCHES.length)

#perform a search using the algorithm the user chose
my_search = MySearch.new(ALL_SEARCHES[response - 1])
my_search.make_my_search


#search random array
# simple_search("a", "b")
