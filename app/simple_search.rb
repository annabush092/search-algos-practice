# search that goes through each entry one by one in order until it finds a match

# in javascript...
# function simpleSearch(arr, searchTerm) {
#   for(let i=0; i<arr.length; i++) {
#     if (arr[i] === searchTerm) {
#       return `Term found in array at index of ${i}.`
#     }
#   }
#   return `Term not found in array.`
# }

class SimpleSearch

  def initialize(arr, search_term)
    @arr = arr
    @search_term = search_term
  end

  def perform
    puts "Inside simple search, arr = #{@arr}, search_term = #{@search_term}"
  end

end
