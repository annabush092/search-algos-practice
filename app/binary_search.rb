# O(log(n))
# search that is compared to searching for a word in a dictionary
# array must be sorted
# cuts the array in half by guessing the middle number
# decides if the middle number is too high or too low. Eliminates half of the array.
# repeat - cut the array in half, see if the number is too high or too low, eliminate half.
# repeat until you find the number.

class BinarySearch < SearchMom

  def perform
    puts "..."
    # report efficiency
    puts ""
    puts "Worst case scenario - log(base2) of #{@arr.length}, or approximately #{Math.log2(@arr.length).floor} loops."
    puts ""
  end

end
