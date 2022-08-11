require_relative './album/music_album'
require_relative './book/book'
require_relative './genre/genre'
require_relative './label/label'
require_relative './game/game'

class App
  attr_accessor :books, :labels, :music_albums, :genres, :games, :authors

  def initialize
    @books = []
    @labels = []
    @music_albums = []
    @genres = []
    @games = []
    @authors = []
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
      puts 'Music album list is empty'
    else
      @music_albums.each do |album|
        puts "[#{album.class}] - Publish Date: '#{album.publish_date}'"
      end
    end
  end

  def list_genres
    if @genres.empty?
      puts 'Genre list is empty'
    else
      @genres.each do |genre|
        puts "[#{genre.class}] - Name: #{genre.name}"
      end
    end
  end

  def list_games
    if @games.empty?
      puts 'Game list is empty'
    else
      @games.each do |game|
        puts "
        [#{game.class}] Last Played: #{game.last_played_at}
        Multiplayer: #{game.multiplayer}
        publish: #{game.publish_date}"
      end
    end
  end

  def list_authors
    if @authors.empty?
      puts 'Author list is empty'
    else
      @authors.each do |author|
        puts "[#{author.class}] First Name: #{author.first_name} Last Name: #{author.last_name}"
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

  def create_game(multiplayer, last_played_at, publish_date)
    @games << Game.new(multiplayer, last_played_at, publish_date)
  end
end
