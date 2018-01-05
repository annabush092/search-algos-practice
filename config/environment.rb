require 'bundler'
Bundler.require
require 'pry'

# parent class of all search classes
require './app/search_mom.rb'

# search algorithms
require './app/binary_search.rb'
require './app/simple_search.rb'

# search implementation
require './app/my_search.rb'
