class CreateMusicAlbum
  def self.create_music_album(app)
    puts 'What\'s the publish date?'
    publish_date = gets.chomp
    app.create_music_album(publish_date)
    puts 'Music Album created!'
  end
end
