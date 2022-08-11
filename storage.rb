require 'json'

class Storage
  def self.create_files
    files = %w[book.json music_album.json game.json]
    files.each do |file|
      File.open(file, 'w+') unless File.exist?(file)
    end
  end

  def self.save_all(app)
    save_music_album(app)
    save_books(app)
    save_games(app)
  end

  def self.load_all(app)
    load_music_albums(app)
    load_books(app)
    load_games(app)
  end

  def self.save_books(app)
    file = './book.json'
    return unless File.exist?(file)

    books = File.open(file, 'w')
    books.write(JSON.generate(app.books))
    books.close
  end

  def self.save_music_album(app)
    file = './music_album.json'
    return unless File.exist?(file)

    albums = File.open(file, 'w')
    albums.write(JSON.generate(app.music_albums))
    albums.close
  end

  def self.save_games(app)
    file = './game.json'
    return unless File.exist?(file)

    games = File.open(file, 'w')
    games.write(JSON.generate(app.games))
    games.close
  end

  def self.load_books(app)
    file = './book.json'
    return unless File.exist?(file)
    return if File.zero?(file)

    books_parse = JSON.parse(File.read(file))
    books_parse.each do |book|
      app.create_book(book['publish_date'], book['publisher'], book['cover_state'])
    end
  end

  def self.load_music_albums(app)
    file = './music_album.json'
    return unless File.exist?(file)
    return if File.zero?(file)

    albums_parse = JSON.parse(File.read(file))
    albums_parse.each do |album|
      app.create_music_album(album['publish_date'], on_spotify: album['on_spotify'])
    end
  end

  def self.load_games(app)
    file = './game.json'
    return unless File.exist?(file)
    return if File.zero?(file)

    games_parse = JSON.parse(File.read(file))
    games_parse.each do |game|
      app.create_game(game['multiplayer'], game['last_played_at'], game['publish_date'])
    end
  end
end
