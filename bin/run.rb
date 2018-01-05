require_relative '../config/environment.rb'

ALL_SEARCHES = ["simple", "binary"]

# print search options to user
MySearch.print_options(ALL_SEARCHES)
# get user algorithm choice
search_index = MySearch.get_choice(ALL_SEARCHES.length)

#perform a search using the algorithm the user chose
my_search = MySearch.new(ALL_SEARCHES[search_index])
my_search.make_my_search


#search random array
# simple_search("a", "b")
