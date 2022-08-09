# item class
class Item
  attr_accessor :author, :label
  attr_reader :publish_date, :genre

  def initialize(publish_date, archived: true)
    @id = Random.rand(1..1000)
    @archived = archived
    @publish_date = publish_date
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def can_be_archived?
    @publish_date > 10
  end

  def move_to_archive?
    can_be_archived? ? @archived = true : false
  end

  private :can_be_archived?
end
