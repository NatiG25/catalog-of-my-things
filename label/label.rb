class Label
  attr_accessor :title, :id
  attr_reader :items

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
