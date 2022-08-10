require_relative '../item'

class Label < Item
  attr_accessor :items, :title, :id

  def initialize(title, id = nil)
    @id = id || Random.rand(1..1000)
    @title = title
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
