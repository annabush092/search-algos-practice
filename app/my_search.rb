class MySearch

  def initialize(algo)
    @algo = algo
  end

  # print algorithm options to user
  # invoked in get_algorithm
  def self.print_options(arr)
    puts ""
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

  # create random array of numbers between 1 and 100
  # invoked in perform_search
  def make_array
    rando_arr = []
    10.times do
      rando_arr << (Random.rand() * 100 + 1).to_i
    end
    # puts "The new array is: #{rando_arr}"
    rando_arr
  end

  # ask user for a search term
  # invoked in make_my_search
  def get_search_term
    puts ""
    puts "Please enter an integer you would like to search for between 1 and 100:"
    user_input = gets.chomp
    # puts "You entered #{user_input}."

    # validate user input
    if user_input.to_i>100 || user_input.to_i < 1
      puts "Only enter an integer between 1 and 100..."
      user_input = self.get_search_term
    end

    # return the user input, as an integer
    user_input.to_i
  end

  # algorithm switch statement
  # invoked in make_my_search
  def perform_search
    case @algo
      when "simple"
        search = SimpleSearch.new(self.make_array, self.get_search_term)
      when "binary"
        search = BinarySearch.new(self.make_array, self.get_search_term)
      else
        puts "error in switch statement"
        return
    end
    search.perform
  end

  #search for term using the specified algorithm
  def make_my_search
    puts "You chose to search using a #{@algo.capitalize} Search..."
    self.perform_search
  end

  # putting everything together...
  def self.run(search_list)
    # get user's choice of which search algorithm to use
    search_index = self.get_algorithm(search_list)

    #perform a search using the chosen algorithm
    my_search = self.new(search_list[search_index])
    my_search.make_my_search

    puts "Would you like to make another search? (y/n)"
    choice = gets.chomp
    if choice == "y"
      self.run(search_list)
    else
      puts "Thank you for searching! Goodbye."
    end
  end

end
