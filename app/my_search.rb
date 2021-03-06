class MySearch

  def initialize(algo, rando_arr)
    @algo = algo
    @rando_arr = rando_arr
  end

  # print algorithm options to user
  # invoked in get_algorithm
  def self.print_options(arr)
    puts "*********************************************************************"
    puts "Please enter the number of the search algorithm you would like to use: "
    arr.each_with_index do |algo, i|
      puts "#{i+1}. #{algo}"
    end
  end

  # get and validate user input
  # invoked in get_algorithm
  def self.get_choice(length)
    puts ""
    input = gets.chomp

    # validate input. If invalid, get new choice
    if input.to_i<1 || input.to_i>length
      puts "Only enter a number from the given options..."
      input = self.get_choice(length)
    end

    # return the user's choice, converted to the index number in the array
    input.to_i - 1
  end

  #user interface
  def self.get_algorithm(arr)
    self.print_options(arr)
    self.get_choice(arr.length)
  end

  # ask user for a search term
  # invoked in make_my_search
  def get_search_term
    puts ""
    puts "Please enter an integer you would like to search for between 1 and 100,000:"
    user_input = gets.chomp
    # puts "You entered #{user_input}."

    # validate user input
    if user_input.to_i < 1
      puts "Only enter an integer that is greater than 1..."
      user_input = self.get_search_term
    end

    # return the user input, as an integer
    user_input.to_i
  end

  # algorithm switch statement
  # invoked in make_my_search
  def perform_search
    # create an instance of the correct algorithm and print search information
    case @algo
      when "simple"
        search = SimpleSearch.new(@rando_arr, self.get_search_term)
        search.print_initial_info("Simple Search")
      when "binary"
        search = BinarySearch.new(@rando_arr, self.get_search_term)
        search.print_initial_info("Binary Search")
      else
        puts "error in switch statement"
        return
    end

    # perform the search and measure how long it takes
    puts Benchmark.measure {  search.perform  }
  end

  #search for term using the specified algorithm
  def make_my_search
    puts "You chose to search using a #{@algo.capitalize} Search..."
    puts ""
    puts "*********************************************************************"
    self.perform_search
  end

  # putting everything together...
  def self.run(search_list, rando_arr)
    # get user's choice of which search algorithm to use
    search_index = self.get_algorithm(search_list)

    #perform a search using the chosen algorithm
    my_search = self.new(search_list[search_index], rando_arr)
    my_search.make_my_search

    puts ""
    puts "*********************************************************************"
    puts ""
    puts "Would you like to make another search? (y/n)"
    choice = gets.chomp
    if choice == "y"
      self.run(search_list, rando_arr)
    else
      puts "Thank you for searching! Goodbye."
      puts ""
    end
  end

end
