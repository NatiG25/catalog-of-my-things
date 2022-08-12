class CreateBook
  def self.create_book(app)
    puts 'What\'s the publish date?'
    publish_date = gets.chomp
    puts 'What\'s the publisher?'
    publisher = gets.chomp
    puts 'What\'s the cover state?'
    cover_state = gets.chomp
    app.create_book(publish_date, publisher, cover_state)
    puts 'A new Book created! 📔'
  end
end
