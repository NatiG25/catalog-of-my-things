require 'date'
class Item
  attr_accessor :author
  attr_reader :publish_date, :genre, :label, :archived

  def initialize(publish_date, id = nil, archived: false)
    @id = id || Random.rand(1..1000)
    @archived = archived
    @publish_date = Date.parse(publish_date)
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def label=(label)
    @label = label.title
    label.items << self unless label.items.include?(self)
  end

  def can_be_archived?
    (Date.today.year - @publish_date.year) > 10
  end

  def move_to_archive?
    can_be_archived? ? @archived = true : false
  end

  private :can_be_archived?
end
