require_relative './app'
require_relative './check_input'

def main
  app = app.new
  loop do
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - Create a book'
    puts '8 - Create a music album'
    puts '9 - Create a game'
  input = gets.chomp.to_i
  end
end

main
