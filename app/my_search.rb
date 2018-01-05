class MySearch

  attr_accessor :search_term

  def initialize(algo)
    @algo = algo
    @search_term = ""
  end

  def self.print_options(arr)
    puts "Search options:"
    arr.each_with_index do |algo, i|
      puts "#{i+1}. #{algo}"
    end
  end

  def self.get_algo(length)
    puts "Please enter the number of the search you would like to make: "
    input = gets.chomp
    if !input.to_i.is_a?(Fixnum) || input.to_i>length
      puts "Only enter a number from the given options..."
      input = self.get_algo(length)
    end
    input.to_i
  end

  # create random array of numbers, invoked in perform_search
  def make_array
    rando_arr = []
    10.times do
      rando_arr << (Random.rand() * 100).to_i
    end
    puts "The new array is: #{rando_arr}"
    rando_arr
  end

  #ask user for a search term, invoked in make_my_search
  def get_search_term
    puts "Please enter an integer you would like to search for between 0 and 100:"
    user_input = gets.chomp
    puts "You entered #{user_input}."
    user_input
  end

  # switch statement to be used in make_my_search
  def perform_search

    # fix syntax of switch statement
    # how do you make it so you can call another class within this class?

    # switch @algo
    #   when "simple":
        # SimpleSeach.new(self.make_array, @search_term).perform
    #     break
    #   when "binary":
    #     break
    #   default:
    #     puts "error in switch statement"
    # end
  end

  #search for term using the specified algorithm
  def make_my_search
    @search_term = self.get_search_term
    puts "Searching for #{@search_term} using a #{@algo.capitalize} Search..."
    self.perform_search
  end

end
