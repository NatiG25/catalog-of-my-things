require_relative './app'
require_relative './check_input'
require_relative './storage'

def main
  app = App.new
  Storage.create_files
  loop do
    puts 'Please choose an option by entering a number'
    puts '1 - List all books 📚'
    puts '2 - List all music albums 🎶'
    puts '3 - List of games 🎮'
    puts '4 - List all genres 🎼'
    puts '5 - List all labels 🔖'
    puts '6 - List all authors 👨‍💻'
    puts '7 - Create a book 📘'
    puts '8 - Create a music album 🎺'
    puts '9 - Create a game 🎯'
    puts '10 - Exit the app ❌'
    input = gets.chomp.to_i
    CheckInput.check_input(input, app)
    Storage.save_music_album(app)
  end
end

main
