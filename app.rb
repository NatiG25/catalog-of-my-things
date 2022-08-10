require_relative './album/music_album'
require_relative './book/book'
require_relative './genre/genre'
require_relative './label/label'

class App
  def initialize
    @book = []
    @label = []
    @music_album = []
    @genre = []
  end

  def list_books
    if @book.empty?
      puts 'Book list is empty!'
    else
      @book.each do |b|
        puts "[#{b.class}] - Publish Date: '#{b.publish_date}'
        Publisher: '#{b.publisher}' Cover State: '#{b.cover_state}'"
      end
    end
  end

  def list_labels
    if @label.empty?
      puts 'Label list is empty'
    else
      @label.each do |label|
        puts "[#{label.class}] - Title: #{label.title}"
      end
    end
  end

  def list_music_albums
    if @music_album.empty?
      puts 'Music albums list is empty'
    else
      @music_album.each do |album|
        puts "[#{album.class}] - Publish Date: '#{album.publish_date}'"
      end
    end
  end

  def list_genre
    if @genre.empty?
      puts 'Genre list is empty'
    else
      @genre.each do |genre|
        puts "[#{genre.class}] - Name: #{genre.name}"
      end
    end
  end

  def create_music_album(publish_date, archived: false, on_spotify: false)
    @music_album << MusicAlbum.new(publish_date, archived: archived, on_spotify: on_spotify)
  end

  def create_genre(name)
    @genre << Genre.new(name)
  end

  def create_book(publish_date, publisher, cover_state, _id = nil, archived: false)
    @book << Book.new(publish_date, publisher, cover_state, archived: archived)
  end

  def create_label(title)
    @label << Label.new(title)
  end
end
