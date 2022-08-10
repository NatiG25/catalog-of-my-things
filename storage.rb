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
        
    end

    def self.save_music_album(app)
        file = './music_album.json'
        return unless File.exist?(file)

        albums = File.open(file, 'w')
        albums.write(JSON.generate(app.music_albums))
        albums.close
    end
end