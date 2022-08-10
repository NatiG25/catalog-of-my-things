require_relative './app'

def main
  app = app.new
  loop do
    puts List all books
    puts List all music albums
    puts List of games
    puts List all genres
    puts List all labels
    puts List all authors
    puts Add a book
    puts Add a music album
    puts Add a game
  input = gets.chomp.to_i
  end
end

main
