class Genre
  attr_reader :items

  def initialize(name)
    @id = Random.rand(1..100)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
