require_relative './album/music_album'
require_relative './book/book'
require_relative './genre/genre'
require_relative './label/label'

class App
  attr_accessor :books, :labels, :music_albums, :genres

  def initialize
    @books = []
    @labels = []
    @music_albums = []
    @genres = []
  end

  def list_books
    if @books.empty?
      puts 'Book list is empty!'
    else
      @books.each do |b|
        puts "[#{b.class}] - Publish Date: '#{b.publish_date}'
        Publisher: '#{b.publisher}' Cover State: '#{b.cover_state}'"
      end
    end
  end

  def list_labels
    if @labels.empty?
      puts 'Label list is empty'
    else
      @labels.each do |label|
        puts "[#{label.class}] - Title: #{label.title}"
      end
    end
  end

  def list_music_albums
    if @music_albums.empty?
      puts 'Music albums list is empty'
    else
      @music_albums.each do |album|
        puts "[#{album.class}] - Publish Date: '#{album.publish_date}'"
      end
    end
  end

  def list_genre
    if @genres.empty?
      puts 'Genre list is empty'
    else
      @genres.each do |genre|
        puts "[#{genre.class}] - Name: #{genre.name}"
      end
    end
  end

  def create_music_album(publish_date, archived: false, on_spotify: false)
    @music_albums << MusicAlbum.new(publish_date, archived: archived, on_spotify: on_spotify)
  end

  def create_genre(name)
    @genres << Genre.new(name)
  end

  def create_book(publish_date, publisher, cover_state, _id = nil, archived: false)
    @books << Book.new(publish_date, publisher, cover_state, archived: archived)
  end

  def create_label(title)
    @label << Label.new(title)
  end
end
