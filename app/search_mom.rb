class SearchMom

  def initialize(arr, search_term)
    @arr = arr
    @search_term = search_term
  end

  def print_initial_info(search_name)
    puts ""
    puts "Searching with a #{search_name}..."
    puts "Random array: #{@arr}"
    puts "Searching for: #{@search_term}"
  end

end
