# search-algos-practice
A project to test out different search algorithms.

Languages used: Ruby


To run:

bundle install

ruby bin/run.rb


If you would like to write additional searches:
- Add the file to the app folder and to the search section in config/environment.rb
- Have your search class inherit from SearchMom, which will provide your class with the initialize and print_initial_info methods, as well as instance variables "@arr" and "@search_term".
- add your algorithm name to the ALL_SEARCHES list in bin/run.rb
- add your algorithm class to the case statement in my_search.rb instance method perform_search
- give your search class an instance method named perform, which is responsible for invoking the search functionality.


TODO:
- actually write search algorithms now
