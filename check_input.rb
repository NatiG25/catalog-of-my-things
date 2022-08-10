require './album/music_album_main'
require './genre/genre_main'
require './book/book_main'
require './app'

class CheckInput
  def self.check_input(input, app)
    case input
    when 1..6
      list_all(input, app)
    when 7..9
      create_options(input, app)
    when 10
      puts 'Goodbye! 👋'
      raise StopIteration
    else
      puts 'Please enter a valid input:'
    end
  end

  def self.list_all(input, app)
    case input
    when 1
      app.list_books
    when 2
      app.list_music_albums
    when 3
      false
    when 4
      app.list_genre
    when 5
      app.list_labels
    when 6
      true
    end
  end

  def self.create_options(input, app)
    case input
    when 7
      CreateBook.create_book(app)
    when 8
      CreateMusicAlbum.create_music_album(app)
    when 9
      false
    end
  end
end
