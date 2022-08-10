require 'json'

class Storage
    def self.create_files
        files = %w[book.json music_album.json]
        files.each do |file|
            File.open(file, 'w+') unless File.exist?(file)
        end
    end

    def self.save_all(app)
        save_music_album(app)
    end

    def self.load_all(app)
        load_music_albums(app)
    end

    def self.save_music_album(app)
        file = './music_album.json'
        return unless File.exist?(file)

        albums = File.open(file, 'w')
        albums.write(JSON.generate(app.music_albums))
        albums.close
    end

    def self.load_music_albums(app)
        file = './music_album.json'
        return unless File.exist?(file)
        return if File.zero?(file)

        albums = File.open(file, 'r')
        albums_parse = JSON.parse(albums.read)
        albums_parse.each do |album|
            app.create_music_album(album['publish_date'], on_spotify: album['on_spotify'] )
        end
        albums.close
    end
end