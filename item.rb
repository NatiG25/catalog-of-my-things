require 'date'

# item class
class Item
  attr_writer :id, :published_date, :archived, :genre, :author, :label

  def initialize(published_date, archived: true)
    @id = id || Random.rand(1..1000)
    @archived = archived
    @published_date = Date.parse(published_date)
    @label = label
    @genre = []
    @author = []
  end

  def label=(label)
    @label = label.title
    label.items << self unless label.items.include?(self)
  end

  def can_be_archived?
    (Date.today.year - @published_date.year) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private :can_be_archived?
end
