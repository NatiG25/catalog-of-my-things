# frozen_string_literal: true

# item class
class Item
  def initialize(archived: true)
    @id = Random.rand(1..1000)
    @archived = archived
    @genre = []
    @author = []
    @label = []
    @published_date = []
    @source = []
  end

  attr_writer :genre, :author, :label, :source

  def can_be_archived?
    @published_date > 10
  end

  def move_to_archive
    if can_be_archived? true
      @archived = true
    else
      false
    end
  end
end
