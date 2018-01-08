# O(n)
# search that goes through each entry one by one in order until it finds a match
# array does not need to be sorted

class SimpleSearch < SearchMom

  # @arr and @search_term are initialized in SearchMom

  def perform
    # loop through array
    # break if you find the search term or if you reach the end of the array
    i = 0
    loop do
      puts @arr[i]
      if @arr[i] == @search_term
        puts "#{@search_term} was found in the array at index #{i}."
        puts "You looped #{i} times."
        break
      elsif i >= @arr.length
        puts "#{@search_term} is not in the array."
        puts "You looped #{i} times."
        break
      end
      i += 1
    end
    # report efficiency
    puts ""
    puts "Worst case scenario - #{@arr.length} loops."
    puts ""
  end

end
