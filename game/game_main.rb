class CreateGame
    def self.create_game(app)
        puts 'Is this game for multiple players? [Yes/No]: '
        multiplayer = gets.chomp.downcase == 'yes'
      
        puts 'Please enter the date this game was last played in: '
        last_played_at = gets.chomp
      
        puts 'Please enter the date this game was published: '
        publish_date = gets.chomp
      
        app.create_game(multiplayer, last_played_at, publish_date)
        puts 'The game has been added successfully!'
    end
end