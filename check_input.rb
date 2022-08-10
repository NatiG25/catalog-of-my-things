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
    end
  end

  def list_all(input, app)
    case input
    when 1
      false
    when 2
      app.list_music_albums
    when 3
      false
    when 4
      app.list_genre
    when 5
      false
    when 6
      false
    end
  end

  def create_options(input, app)
    case input
    when 7
      false
    when 8
      app.create_music_album
    when 9
      false
    end
  end
end