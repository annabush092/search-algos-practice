# search that goes through each entry one by one in order until it finds a match
# array does not need to be sorted

# in javascript...
# function simpleSearch(arr, searchTerm) {
#   for(let i=0; i<arr.length; i++) {
#     if (arr[i] === searchTerm) {
#       return `Term found in array at index of ${i}.`
#     }
#   }
#   return `Term not found in array.`
# }

class SimpleSearch < SearchMom

  # @arr and @search_term are initialized in SearchMom

  def perform

    #print_initial_info is defined in SearchMom
    self.print_initial_info("Simple Search")

    # loop through array
    # break if you find the search term or if you reach the end of the array
    i = 0
    loop do
      if @arr[i] == @search_term
        puts "#{@search_term} was found in the array at index #{i}."
        break
      elsif i >= @arr.length
        puts "#{@search_term} is not in the array."
        break
      end
      i += 1
    end

  end

end
