# // success- return address
# // failure- return null
# function binarySearch() {
# }

class BinarySearch

  def initialize(arr, search_term)
    @arr = arr
    @search_term = search_term
  end

  def perform
    puts "Inside binary search, arr = #{@arr}, search_term = #{@search_term}"
  end

end
