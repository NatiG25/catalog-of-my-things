class CreateGenre
    def self.create_genre(app)
        puts 'What\'s the genre name?'
        name = gets.chomp
        app.create_genre(name)
        puts 'Genre created!'
    end
end