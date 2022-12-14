class Genre
  attr_accessor :name
  attr_reader :items, :id

  def initialize(name, id = nil)
    @id = id || Random.rand(1..100)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
