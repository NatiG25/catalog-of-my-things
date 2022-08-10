require './album/music_album_main'
require './genre/genre_main'
require './app'

class CheckInput
  def self.check_input(input, app)
    case input
    when 1..6
      list_all(input, app)
    when 7..9
      app.create_options
    when 10
      puts 'Goodbye!'
      raise StopIteration
    else
      puts 'Please enter a valid input:'
    end
  end

  def list_all(input, app)
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

  def create_options(input, app)
    case input
    when 7
      app.create_book
    when 8
      app.create_music_album
    when 9
      false
    end
  end
end
